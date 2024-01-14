#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/834acd392e0964a41f05790655a994b9/VaultDoor4.java
javac ./VaultDoor4.java && java VaultDoor4

