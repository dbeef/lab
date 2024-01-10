#!/bin/bash

source common.sh
cd /tmp
wget https://out7.hex-rays.com/files/idafree83_linux.run
echo "Running installer"
chmod +x ./idafree83_linux.run
mkdir -p $TOOLS_DIR/idafree83
./idafree83_linux.run --prefix $TOOLS_DIR/idafree83 --mode unattended
ln -s $TOOLS_DIR/idafree83/ida64 $TOOLS_DIR/ida
cd -
