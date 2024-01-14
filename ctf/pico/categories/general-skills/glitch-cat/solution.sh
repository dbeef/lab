#!/bin/bash

# Just run what you get in a python3 interpreter:
nc saturn.picoctf.net 53638
python3 -c "print('picoCTF{gl17ch_m3_n07_' + chr(0x62) + chr(0x64) + chr(0x61) + chr(0x36) + chr(0x38) + chr(0x66) + chr(0x37) + chr(0x35) + '}')"

