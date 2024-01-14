#!/bin/bash

# Extract the keys and connect through SSH:

# wget https://artifacts.picoctf.net/c/71/disk.img.gz
# gunzip disk.img.gz

mmls disk.img
fls -o 2048 -r disk.img
fls -o 206848 -r disk.img
icat -o 206848  -r disk.img  2345 > id_ed25519
icat -o 206848  -r disk.img  2346 > id_ed25519.pub
cat id_ed25519
cat id_ed25519.pub
chown 700 id_ed25519
sudo chmod 600 id_ed25519
sudo chown 700 id_ed25519
sudo chown dbeef:dbeef id_ed25519
# ssh -i id_ed25519 -p 58736  ctf-player@saturn.picoctf.net

