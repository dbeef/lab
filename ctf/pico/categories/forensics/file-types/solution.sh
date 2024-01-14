#!/bin/bash

set -x
set -e

wget https://artifacts.picoctf.net/c/81/Flag.pdf

# 1 - It's a shell script
chmod +x ./Flag.pdf
./Flag.pdf

# 2 - It's a "current ar archive"
file flag
mv flag flag.ar
ar -xv flag.ar

# 3 - It's a "cpio archive"
file flag
mv flag flag.cpio
cpio -idv < ./flag.cpio

# 4 - It's a "bzip2 compresed data"
file flag
mv flag flag.bzip
bzip2 -d -k ./flag.bzip # -k to keep file

# 5 - It's a "gzip compressed data"
file flag.bzip.out
mv flag.bzip.out flag.gz
gunzip flag.gz

# 6 - It's a "lzip compressed data"
file flag
mv flag flag.lzip
lzip -d flag.lzip

# 7 - It's a "LZ4 compressed data"
file flag.lzip.out
unlz4 -d flag.lzip.out flag.lzma
rm flag.lzip.out

# 8 - It's a "LZMA compressed data"
lzma -d flag.lzma

# 9 - It's a "lzop compressed data"
file flag.lzop
mv flag flag.lzop
lzop -d flag.lzop

# 10 - It's a "lzip compressed data"
file flag
mv flag flag.lzip
lzip -d flag.lzip

# 11 - It's a "XZ compressed data"
mv flag.lzip.out flag.xz
xz -d flag.xz

# 12 - Now, put this into "CyberChef under From Hex"
cat flag

