#!/bin/sh

TMP_DIR=$PWD/tmp

mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/b7d30de6eaaf83e685aea7c10c5bdea8/two.apk

# See solution dir
# What I have learned - how to compile and run java code from terminal

# Same as previous droids (droids1), copy the java code, run it to get the mangled pass sequence that is passed down through JNI and paste
# it in the Android Emulator window

