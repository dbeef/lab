#!/bin/bash

source common.sh

sudo apt install --yes \
    libmhash-dev \
    libmcrypt-dev \
    libmcrypt4 \
    forensics-all \
    steghide
cd $TOOLS_DIR
ln -s $(which steghide) steghide
