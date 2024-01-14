#!/bin/bash

wget https://artifacts.picoctf.net/c/31/level5.py
wget https://artifacts.picoctf.net/c/31/level5.flag.txt.enc
wget https://artifacts.picoctf.net/c/31/level5.hash.bin
wget https://artifacts.picoctf.net/c/31/dictionary.txt

# Time consuming but had to go for a lunch anyway:
cat dictionary.txt | xargs -I {} /bin/bash -c "echo -n {} | python3 ./level5.py" | grep -i pico

