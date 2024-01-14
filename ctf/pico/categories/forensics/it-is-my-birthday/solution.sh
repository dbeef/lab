#!/bin/bash

# Generate two arbitrary files that will have different content but the same (conflicting hash).
# They don't need to be a .PDF, but need to be saved under such extension.
# Upload said files to the host, receive back the flag.

# Example hex-strings that differ yet yield the same MD5 hash:

# d131dd02c5e6eec4693d9a0698aff95c2fcab58712467eab4004583eb8fb7f8955ad340609f4b30283e488832571415a085125e8f7cdc99fd91dbdf280373c5bd8823e3156348f5bae6dacd436c919c6dd53e2b487da03fd02396306d248cda0e99f33420f577ee8ce54b67080a80d1ec69821bcb6a8839396f9652b6ff72a70
# d131dd02c5e6eec4693d9a0698aff95c2fcab50712467eab4004583eb8fb7f8955ad340609f4b30283e4888325f1415a085125e8f7cdc99fd91dbd7280373c5bd8823e3156348f5bae6dacd436c919c6dd53e23487da03fd02396306d248cda0e99f33420f577ee8ce54b67080280d1ec69821bcb6a8839396f965ab6ff72a70

# Save them in 2 separate files, saved with .pdf extension.
# To save a hex-string as binary in a file:

# echo -n 'd131dd02c5e6eec4693d9a0698aff95c2fcab58712467eab4004583eb8fb7f8955ad340609f4b30283e488832571415a085125e8f7cdc99fd91dbdf280373c5bd8823e3156348f5bae6dacd436c919c6dd53e2b487da03fd02396306d248cda0e99f33420f577ee8ce54b67080a80d1ec69821bcb6a8839396f9652b6ff72a70' | xxd -r -p > col2.pdf
# echo -n 'd131dd02c5e6eec4693d9a0698aff95c2fcab50712467eab4004583eb8fb7f8955ad340609f4b30283e4888325f1415a085125e8f7cdc99fd91dbd7280373c5bd8823e3156348f5bae6dacd436c919c6dd53e23487da03fd02396306d248cda0e99f33420f577ee8ce54b67080280d1ec69821bcb6a8839396f965ab6ff72a70' | xxd -r -p > col1.pdf

# Proof:

# ➜  ~/dev/ctf/pico/categories/forensics/it-is-my-birthday md5sum col*
# 79054025255fb1a26e4bc422aef54eb4  col1.pdf
# 79054025255fb1a26e4bc422aef54eb4  col2.pdf

#### Links:

# https://stackoverflow.com/questions/1756004/can-two-different-strings-generate-the-same-md5-hash-code
# https://security.stackexchange.com/a/249733
# https://github.com/corkami/collisions#fastcoll-md5
# https://www.mscs.dal.ca/~selinger/md5collision/

# Hash vulnerabilities:
# https://github.com/corkami/collisions#exploitations

# Related:
# https://unix.stackexchange.com/questions/118247/echo-bytes-to-a-file

