#!/bin/sh

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/06318765139795831859f843dd56ce60/three.apk

# Decompile with apktool, edit smol files to call new method, re-package, run

