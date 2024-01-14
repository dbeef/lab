#!/bin/bash

TMP_DIR=$PWD/tmp
mkdir -p $TMP_DIR
cd $TMP_DIR

wget https://jupiter.challenges.picoctf.org/static/9505cca05dc00fecead41106370ee619/VaultDoor5.java
javac ./VaultDoor5.java && java VaultDoor5


>>> decoded = base64.b64decode(base64.b64decode(code))
>>> decoded
b'\xeb}\xf4\xe9\xee\xfa\xdf~\xf6\xef\x8d\xf5\xe9\xee\xbb\xe5\xfe\xba\xefm\xf4\xe9\xde_\xebn\xb5\xdf\x9e\xb9\xe5\xfd\xfa\xdf\x8e_\xdf\xcd\xf8\xeb\xae\xb8\xdf\x9d\xf4\xdf\xdd\xf9'
>>> decoded = base64.b64decode(code)
>>> decoded
b'%63%30%6e%76%33%72%74%31%6e%67%5f%66%72%30%6d%5f%62%61%35%65%5f%36%34%5f%38%34%66%64%35%30%39%35'
>>> decoded = base64.b64decode(base64.b64decode(code))
KeyboardInterrupt
>>> urllib.parse.unquote(decoded)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
    File "/usr/lib/python3.8/urllib/parse.py", line 643, in unquote
        raise TypeError('Expected str, got bytes')
        TypeError: Expected str, got bytes
        >>> urllib.parse.unquote(decoded.decode('utf-8'))
        'c0nv3rt1ng_fr0m_ba5e_64_84fd5095'
        >>>


