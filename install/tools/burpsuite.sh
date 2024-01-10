#!/bin/bash

source ./common.sh

VERSION=2023.11.1.3
mkdir -p /tmp/burpsuite-$VERSION
cd /tmp/burpsuite-$VERSION
wget \
    "https://portswigger-cdn.net/burp/releases/download?product=community&version=${VERSION}&type=Linux" \
    --output-document burpsuite.sh

chmod +x ./burpsuite.sh
./burpsuite.sh # Interactive installer

cd -
ln -s BurpSuiteCommunity/BurpSuiteCommunity burpsuite
