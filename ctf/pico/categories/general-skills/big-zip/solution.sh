#!/bin/bash

wget https://artifacts.picoctf.net/c/504/big-zip-files.zip
unzip big-zip-files.zip
grep -rni . -e pico

