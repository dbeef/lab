#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/03c960ddcc761e6f7d1722d8e6212db3/VaultDoorTraining.java
cat VaultDoorTraining.java | grep -F password.equals

