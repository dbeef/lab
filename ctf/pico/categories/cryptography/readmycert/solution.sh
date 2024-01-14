#!/bin/bash

wget https://artifacts.picoctf.net/c/426/readmycert.csr
# https://stackoverflow.com/questions/201070/how-to-decode-a-csr-file
openssl req -text -in ./readmycert.csr | grep -i pico
