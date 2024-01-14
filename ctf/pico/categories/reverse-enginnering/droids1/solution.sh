#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/b12c6d058c7f52eb1fd2015cfd291716/one.apk

# Open the SO in ghidra, find the nutmeg function, match the alphabet characters
# OR
# Open in JADX and find password in resources
# https://www.youtube.com/watch?v=o31dpvOX7s8
# and here
# https://picoctf2019.haydenhousen.com/reverse-engineering/droids1
