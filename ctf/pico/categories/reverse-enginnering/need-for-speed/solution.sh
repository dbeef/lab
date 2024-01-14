#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/f9abc386dfb1309e687344783f208b20/need-for-speed

# Run in IDA.
# Reversing the encryption seems to be a waste of time, there's a better solution.
# There's a function called "set_timer".
# Edit assembly in a way it would call "alarm(0xFF)" instead of present "alarm(1)", write back to binary, call it.
#
# picoCTF{Good job keeping bus #190ca38b speeding along!}
#
# Interesting approach that someone else took:
# https://github.com/HHousen/PicoCTF-2019/blob/master/Reverse%20Engineering/Need%20For%20Speed/README.md
#
# Run the program in GDB and ignore SIGALRM messages:
#
# $ gdb ./need-for-speed
# (gdb) handle SIGALRM ignore
#
# + see the link above, other clever methods.

