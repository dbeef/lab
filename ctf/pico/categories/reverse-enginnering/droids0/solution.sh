#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/02bcd73e630f50ef0b12bcdad9d84e0d/zero.apk

# Run the .apk in Android Studio, open logcat view (View->Tools->logcat), press the button in the application
