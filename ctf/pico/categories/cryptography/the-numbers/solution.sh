#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/f209a32253affb6f547a585649ba4fda/the_numbers.png

# ➜  ~/dev/ctf/pico/the-numbers python3
# Python 3.8.10 (default, Mar 13 2023, 10:26:41)
# [GCC 9.4.0] on linux
# Type "help", "copyright", "credits" or "license" for more information.
# >>> chr(16)
# '\x10'
# >>> chr(9)
# '\t'
# >>> chr(20)
# '\x14'
# >>> chr(8)
# '\x08'
# >>> chr(5)
# '\x05'
# >>> chr(14)
# '\x0e'
# >>> chr(21)
# '\x15'
# >>>
# KeyboardInterrupt
# >>> a = 1
# >>> b = 2
# >>> c = 3
# >>> d = 4
# >>> e = 5
# >>> f = 6
# >>> alphabet = ['X', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
# >>> a = alphabet
# >>> a[16]
# 'p'
# >>> a[16] + a[9] + a[3] + a[15] + a[3] + a[20] + a[6]
# 'picoctf'
# >>> a[16] + a[9] + a[3] + a[15] + a[3] + a[20] + a[6] + '{' + a[20] + a[8] + a[5] + a[14] + a[21] + a[13] + a[2] + a[5] + a[18] + a[19] + a[13] + a[1] + a[19] + a[15] + a[14] + '}'
# 'picoctf{thenumbersmason}'
# >>>

