#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/4153422e18d40363e7ffc7e15a108683/garden.jpg
strings garden.jpg | grep -i pico

