#!/bin/bash

file dds1-alpine.flag.img.gz 2>&1 > /dev/null || wget https://mercury.picoctf.net/static/a734f18939e0aaea9d27bc7a243a0ed0/dds1-alpine.flag.img.gz

# srch_strings is a part of Sleuth Kit
srch_strings dds1-alpine.flag.img > strings.txt
cat strings| grep -i pico

