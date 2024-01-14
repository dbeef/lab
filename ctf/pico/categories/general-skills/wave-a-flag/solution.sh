#!/bin/bash

TMP_DIR=$PWD/tmp
EXE_URL=https://mercury.picoctf.net/static/cfea736820f329083dab9558c3932ada/warm

mkdir $TMP_DIR
cd $TMP_DIR

wget $EXE_URL
chmod +x warm
./warm -h

