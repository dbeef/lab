#!/bin/bash

source common.sh
cd /tmp
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.0_build/ghidra_11.0_PUBLIC_20231222.zip
unzip ./ghidra_11.0_PUBLIC_20231222.zip
mv ./ghidra_11.0_PUBLIC $TOOLS_DIR/ghidra_11.0
ln -s $TOOLS_DIR/ghidra_11.0/ghidraRun $TOOLS_DIR/ghidra
cd -
