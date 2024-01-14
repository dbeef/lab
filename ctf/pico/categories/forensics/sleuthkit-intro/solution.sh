#!/bin/bash

wget https://artifacts.picoctf.net/c/164/disk.img.gz

gunzip disk.img.gz
mmls disk.img

# ➜  ~/dev/ctf/pico/sleuthkit-intro nc saturn.picoctf.net 52472
# What is the size of the Linux partition in the given disk image?
# Length in sectors: 202752
# 202752
# Great work!
# picoCTF{mm15_f7w!}

