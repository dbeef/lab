#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://artifacts.picoctf.net/c/205/unpackme-upx

# This file was packed with UPX file packer - https://upx.github.io/
# First of all, download the UPX packer and call:

upx -d unpackme-upx

# It writes back to the file passed.
# Now open it with Cutter and modify command under 0x00401ecd to JGE
# and run the executable once again.

# OR
# Open with Cutter, see the decompiler view of the main function -
# you'll find the magic number as - 754635 (0xb83cb)

