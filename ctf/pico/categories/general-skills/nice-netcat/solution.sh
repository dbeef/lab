#!/bin/bash

TIMEOUT_SECS=3

nc mercury.picoctf.net 35652 -w $TIMEOUT_SECS | python3 to-ascii.py

