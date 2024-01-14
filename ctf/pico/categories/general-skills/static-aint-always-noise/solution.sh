#!/bin/bash

TMP_DIR=$PWD/tmp

mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://mercury.picoctf.net/static/7495259e963bd5b67d0fb8b616652618/static
wget https://mercury.picoctf.net/static/7495259e963bd5b67d0fb8b616652618/ltdis.sh

chmod +x ltdis.sh
./ltdis.sh static
cat static.ltdis.strings.txt | grep -i pico


