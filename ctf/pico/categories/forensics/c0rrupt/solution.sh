#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/ab30fcb7d47364b4190a7d3d40edb551/mystery

# Used imhex
# Used this for verification:
# https://www.nayuki.io/page/png-file-chunk-inspector
# https://en.wikipedia.org/wiki/PNG

# It's about modifying and fixing the PNG header;
# * I know it's a PNG file because of similar magic number (seemingly modified) and IEND at the end of the file
# * I modified the magic number to be correct
# * I modified the IHDR after the magic number
# * I modified pHYS to be all zero (modified the CRC too, out of content + chunk type)
# * I modified the IDAT chunk name (which wasn't called IDAT before - starting at 0x57)
# * I modified its length - arbitrarily zeroed first 2 bytes
# * Then I opened the image - the flag was there

