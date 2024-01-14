#!/bin/bash

wget https://artifacts.picoctf.net/c/502/files.zip
unzip files.zip
cat `find . -name uber-secret.txt`

