#!/bin/bash

nc jupiter.challenges.picoctf.org 4427 -w 5 > out.txt
grep -rni . -e pico

