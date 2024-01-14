#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/926d4bfd7030b13dbc98ca26e608c740/four.apk

# As in number 3, but additionally, reverse the password (call the Java code)

