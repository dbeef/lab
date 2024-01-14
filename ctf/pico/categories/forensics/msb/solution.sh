#!/bin/bash

wget https://artifacts.picoctf.net/c/307/Ninja-and-Prince-Genji-Ukiyoe-Utagawa-Kunisada.flag.png

# Open in stegsolve, Analyse -> Data extract, select:
# R -> 7
# G -> 7
# B -> 7
# (No alpha!)
# Row, MSB First
# Then export and grep for pico.

