#!/bin/bash

file flag.txt 2>&1 > /dev/null || wget https://jupiter.challenges.picoctf.org/static/e7e5d188621ee705ceeb0452525412ef/flag.txt
feh flag.txt

