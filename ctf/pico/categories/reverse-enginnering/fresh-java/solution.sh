#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://artifacts.picoctf.net/c/198/KeygenMe.class

# Open this in a Java decompiler, i.e Intellij, then sort lines - you have the flag.

