#!/bin/bash

file drawing.flag.svg 2>&1 > /dev/null || wget https://artifacts.picoctf.net/c/100/drawing.flag.svg
cat drawing.flag.svg | grep -F "id="
