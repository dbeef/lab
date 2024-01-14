cat suspicious.dd.sda1 | grep -Fa "Nothing to see here" -A 10 -B 10 | hexdump -C

# The flag - it's in the "slack space":

# 000006b0  0c 59 22 43 43 5d 9c 86  be b1 31 dd f8 c4 df 4e  |.Y"CC]....1....N|
# 000006c0  6f 74 68 69 6e 67 20 74  6f 20 73 65 65 20 68 65  |othing to see he|
# 000006d0  72 65 21 20 42 75 74 20  79 6f 75 20 6d 61 79 20  |re! But you may |
# 000006e0  77 61 6e 74 20 74 6f 20  6c 6f 6f 6b 20 68 65 72  |want to look her|
# 000006f0  65 20 2d 2d 3e 0a 7d 00  64 00 63 00 37 00 30 00  |e -->.}.d.c.7.0.|
# 00000700  37 00 39 00 64 00 64 00  5f 00 33 00 3c 00 5f 00  |7.9.d.d._.3.<._.|
# 00000710  7c 00 4c 00 6d 00 5f 00  31 00 31 00 31 00 74 00  ||.L.m._.1.1.1.t.|
# 00000720  35 00 5f 00 33 00 62 00  7b 00 46 00 54 00 43 00  |5._.3.b.{.F.T.C.|
# 00000730  6f 00 63 00 69 00 70 00  00 00 00 00 00 00 00 00  |o.c.i.p.........|
# 00000740  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|

# (it's reversed)

# This can be done using Autopsy as well - TODO: Writeup in Autopsy

