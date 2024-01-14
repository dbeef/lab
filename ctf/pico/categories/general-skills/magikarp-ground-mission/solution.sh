#!/bin/sh

SSH_COMMAND=$@
$SSH_COMMAND -C "cat /home/ctf-player/drop-in/1of3.flag.txt /2of3.flag.txt /home/ctf-player/3of3.flag.txt"

