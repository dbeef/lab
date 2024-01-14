#!/bin/bash

nc mercury.picoctf.net 28067 -w 5 > out.txt
cat out.txt | clipcopy
# After googling for the first line (G17 G21 G40 G90 G64 P0.003 F50), turns out it's .gcode.
# Now paste here:
https://ncviewer.com/

