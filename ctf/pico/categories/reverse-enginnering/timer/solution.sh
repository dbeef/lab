#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://artifacts.picoctf.net/c/449/timer.apk
unzip timer.apk
hexdump -C class classes3.dex | grep -F picoCTF -A 1 -B 1

