#!/bin/bash

TMP_DIR=$PWD/tmp
SCRIPT_URL=https://mercury.picoctf.net/static/b351a89e0bc6745b00716849105f87c6/ende.py
PASS_URL=https://mercury.picoctf.net/static/b351a89e0bc6745b00716849105f87c6/pw.txt
FLAG_URL=https://mercury.picoctf.net/static/b351a89e0bc6745b00716849105f87c6/flag.txt.en

mkdir $TMP_DIR
cd $TMP_DIR

wget \
    $SCRIPT_URL \
    $PASS_URL \
    $FLAG_URL

cat pw.txt | python3 ende.py -d flag.txt.en

