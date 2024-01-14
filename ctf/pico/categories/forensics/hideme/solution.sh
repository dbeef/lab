#!/bin/bash

wget https://artifacts.picoctf.net/c/259/flag.png
binwalk -e ./flag.png

# Without binwalk (needlessly complicated but my initial approach nevertheless):
# find out there's extra data chunk with pngcheck:
# >> pngcheck -v flag.png
# Then use dd to extract individual bytes (https://stackoverflow.com/questions/1423346/how-do-i-extract-a-single-chunk-of-bytes-from-within-a-file):
# >> dd if=flag.png bs=1 status=none skip=39739 count=99999 of=out.zip
# Then unzip:
# >> unzip out.zip

