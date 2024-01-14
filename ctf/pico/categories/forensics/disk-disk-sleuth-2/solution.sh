#!/bin/bash

file mystery 2>&1 > /dev/null || wget https://jupiter.challenges.picoctf.org/static/bf3a8a3c50d418501df52c9ee9a7ce3f/mystery
file mystery.png 2>&1 > /dev/null || wget https://jupiter.challenges.picoctf.org/static/bf3a8a3c50d418501df52c9ee9a7ce3f/mystery.png

# "Recovering deleted files with SleuthKit"
# https://possiblelossofprecision.net/?p=1216

# List files:
fls -o 2048 -r dds2-alpine.flag.img
# This one is interesting:
fls -o 2048 -r dds2-alpine.flag.img | grep -i bottom
# Extract it:
icat -o 2048 -r dds2-alpine.flag.img 18291 > down-at-the-bottom.txt
# Cat it:
cat down-at-the-bottom.txt

