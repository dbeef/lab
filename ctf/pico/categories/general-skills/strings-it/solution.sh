#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/fae9ac5267cd6e44124e559b901df177/strings
strings strings| grep -i pico
