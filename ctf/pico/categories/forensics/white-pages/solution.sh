#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/95be9526e162185c741259a75dffa0ab/whitepages.txt

# The contents are binary, space is 0x20, tab is e2 80 83. Substitute with 0/1 and decode text from binary.


