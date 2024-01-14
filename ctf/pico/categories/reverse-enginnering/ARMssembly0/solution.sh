#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://mercury.picoctf.net/static/006961dc756fc3f418b0dbe0a42dcee8/chall.S

aarch64-linux-gnu-gcc chall.S -o chall-aarch64 -static
qemu-aarch64 -L /usr/aarch64-linux-gnu chall-aarch64 4004594377 4110761777

# https://azeria-labs.com/arm-on-x86-qemu-user/

