#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://artifacts.picoctf.net/c/272/ret
strings ret | grep -i pico


