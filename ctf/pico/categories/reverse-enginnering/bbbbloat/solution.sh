#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://artifacts.picoctf.net/c/47/bbbbloat

echo "Now open in Cutter and change 0x000014d0 to JLE"

