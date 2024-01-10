#!/bin/bash

source common.sh
sudo snap install postman
ln -s $(which postman) $TOOLS_DIR/
