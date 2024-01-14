#!/bin/bash

wget https://mercury.picoctf.net/static/a614a27d4cb251d04c7d2f3f3f76a965/cat.jpg
exiftool cat.jpg | grep -i license
# (base64 flag)

