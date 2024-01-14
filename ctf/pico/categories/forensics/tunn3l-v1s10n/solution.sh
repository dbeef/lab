#!/bin/bash

wget https://mercury.picoctf.net/static/06a5e4ab22ba52cd66a038d51a6cc07b/tunn3l_v1s10n

# 1. Fix the BMP header (broken fields were kind-of-obvious because of '0xbad' value
# 2. Experiment with BMP height in its header - I changed it to be 3x the original height, revealing the unseen part
#    of the image with the flag
#
# Otherwise, I tried binwalk/foremost on the image as it seemed to have suspiciously repeating values;
# thought maybe there's another image(s) packed inside this one but there was none.

