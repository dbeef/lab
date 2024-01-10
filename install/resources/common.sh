#!/bin/bash

# Referencing unset variables are an error:
set -u
# Exit on error:
set -e

REPO_ROOT_DIR=$PWD/../../
TOOLS_DIR=$REPO_ROOT_DIR/tools
RESOURCES_DIR=$REPO_ROOT_DIR/resources
BOOKS_DIR=$REPO_ROOT_DIR/books

mkdir -p $TOOLS_DIR
mkdir -p $RESOURCES_DIR
mkdir -p $BOOKS_DIR