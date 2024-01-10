#!/bin/bash

# Referencing unset variables are an error:
set -u
# Exit on error:
set -e

REPO_ROOT_DIR=$PWD/../../
TOOLS_DIR=$REPO_ROOT_DIR/tools
WORDLISTS_DIR=$REPO_ROOT_DIR/wordlists

mkdir -p $TOOLS_DIR
mkdir -p $WORDLISTS_DIR
