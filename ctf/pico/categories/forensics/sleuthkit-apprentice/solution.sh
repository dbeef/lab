#!/bin/bash

wget https://artifacts.picoctf.net/c/138/disk.flag.img.gz
gunzip disk.flag.img.gz

# Display the partition layout of a volume system  (partition tables)
mmls disk.flag.img

# List files at 2048:
fls -o 2048 -r disk.flag.img
# List files at 360448:
fls -o 360448 -r disk.flag.img | grep -i flag
# Extract the file:
icat -o 360448 -r  disk.flag.img 2371  > flag.txt
cat flag.txt

