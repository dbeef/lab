#!/bin/bash

wget https://artifacts.picoctf.net/c/151/leak.tar
tar -xf leak.tar
cat leak/passwords.txt | head -n 378 | tail -n 1
# Now place it in cyberchef, it's ROT13 with the shift of 13

