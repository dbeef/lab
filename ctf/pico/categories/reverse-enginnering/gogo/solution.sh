#!/bin/bash

wget https://mercury.picoctf.net/static/eb7ca66cba87f2df20ea754c89148343/enter_password

# 1. Run under IDA debugger, pass any arbitrary 32-char string as a parameter;
#    IMPORTANT: to pass input to debugged application (stdin), need to run IDA from terminal as:
#               cat | ida
#    Then write there when prompted.
# 2. Break in main.checkPassword, line 16 (while (result < 32))
# 3. Check v4 value, check key value
# 4. UnXOR
# 5. Connect with nc to the flag remote
# 6. Type UnXORed password
# 7. When asked about unhashed key, just google the hash (probably could use hashcat):
#    https://md5.gromweb.com/?md5=861836f13e3d627dfa375bdb8389214e

# Hashcat call (if googling failed):
# hashcat -m 0 861836f13e3d627dfa375bdb8389214e ~/dev/ctf/wordlists/rockyou.txt

# Other IDA-related:

# IDA decompiler turned out to be better than Ghidra's (at least in this case - golang)
# F5 for pseudocode
# F2 - put a breakpoint
# F8 - Step over
# F9 - continue
# Debugger -> Process options -> Here you can add an argument to called executable

# Other ghidra related:
# L - rename variable
