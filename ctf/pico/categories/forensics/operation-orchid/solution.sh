#!/bin/bash



➜  ~/dev/ctf/pico/operation-orchid #+ r/r 1875:     .ash_history
#+ r/r * 1876(realloc):  flag.txt
#+ r/r 1782:     flag.txt.enc
#d
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid # icat -o 206848  -r disk.img  2345> id_ed25519
➜  ~/dev/ctf/pico/operation-orchid icat -o 0000411648  -r disk.flag.img  1876 > flag.txt
➜  ~/dev/ctf/pico/operation-orchid icat -o 0000411648  -r disk.flag.img  1782  > flag.txt.enc
➜  ~/dev/ctf/pico/operation-orchid ls
disk.flag.img  flag.txt  flag.txt.enc
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt*
           -0.881573            34.311733
Salted__eBJc$QE&$4jMKGeE^Ȥ7 ؎$'%%
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt
           -0.881573            34.311733
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.enc
Salted__eBJc$QE&$4jMKGeE^Ȥ7 ؎$'%%
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.enc | hexdump -VC
hexdump from util-linux 2.37.2
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.enc | hexdump -vC
00000000  53 61 6c 74 65 64 5f 5f  ea de 81 d1 d3 65 c0 95  |Salted__.....e..|
00000010  42 d5 4a 18 7f e8 63 d1  24 51 45 26 24 a2 87 34  |B.J...c.$QE&$..4|
00000020  00 6a 4d e1 0e 4b 47 65  02 45 d0 31 94 08 fb 5e  |.jM..KGe.E.1...^|
00000030  c8 a4 37 f9 20 14 b3 cb  f1 d8 8e 24 01 c4 27 25  |..7. ......$..'%|
00000040
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.enc | hexdump -VC
➜  ~/dev/ctf/pico/operation-orchid icat -o 0000411648  -r disk.flag.img  1875  > bash_history
➜  ~/dev/ctf/pico/operation-orchid vi bash_history
➜  ~/dev/ctf/pico/operation-orchid vi test.txt
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -salt -in test.txt -out test.txt.enc -k unbreakablepassword1234567
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.
➜  ~/dev/ctf/pico/operation-orchid cat test.txt.enc
Salted__BMR(/Wc%
➜  ~/dev/ctf/pico/operation-orchid cat test.txt
TEST
➜  ~/dev/ctf/pico/operation-orchid hexdump flag.txt.enc
0000000 6153 746c 6465 5f5f deea d181 65d3 95c0
0000010 d542 184a e87f d163 5124 2645 a224 3487
0000020 6a00 e14d 4b0e 6547 4502 31d0 0894 5efb
0000030 a4c8 f937 1420 cbb3 d8f1 248e c401 2527
0000040
➜  ~/dev/ctf/pico/operation-orchid
➜  ~/dev/ctf/pico/operation-orchid hexdump flag.txt.enc
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.enc
Salted__eBJc$QE&$4jMKGeE^Ȥ7 ؎$'%%
➜  ~/dev/ctf/pico/operation-orchid openssl aes-256-cbc -d -a -pbkdf2 -in flag.txt.enc -out flag.txt.new
enter AES-256-CBC decryption password:
bad password read
➜  ~/dev/ctf/pico/operation-orchid openssl aes-256-cbc -d -a -pbkdf2 -in flag.txt.enc -out flag.txt.new
enter AES-256-CBC decryption password:
error reading input file
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -d -a -pbkdf2 -in flag.txt.enc -out flag.txt.new
enter AES-256-CBC decryption password:
error reading input file
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -alt -in flag.txt.enc -out flag.txt.new
aes256: Unknown cipher: alt
aes256: Use -help for summary.
40E76E96187F0000:error:0308010C:digital envelope routines:inner_evp_generic_fetch:unsupported:../crypto/evp/evp_fetch.c:349:Global default library context, Algorithm (alt : 0), Properties (<null>)
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -salt -in flag.txt.enc -out flag.txt.new
enter AES-256-CBC encryption password:
Verifying - enter AES-256-CBC encryption password:
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.new
Salted__4Rt
!7zB9m\eQ[Č3+>4.123}HF,9
                        0r -5%
➜  ~/dev/ctf/pico/operation-orchid rm flag.txt.new
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -d -a -pbkdf2 -in flag.txt.enc -out flag.txt.new
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -d -salt -in flag.txt.enc -out flag.txt.new
enter AES-256-CBC decryption password:
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.
bad decrypt
405747D5F97F0000:error:1C800064:Provider routines:ossl_cipher_unpadblock:bad decrypt:../providers/implementations/ciphers/ciphercommon_block.c:124:
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -d -salt -in flag.txt.enc -out flag.txt.new
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.
cat: flag.txt.: No such file or directory
➜  ~/dev/ctf/pico/operation-orchid cat flag.txt.enc
Salted__eBJc$QE&$4jMKGeE^Ȥ7 ؎$'%%
➜  ~/dev/ctf/pico/operation-orchid openssl aes256 -d -salt -in flag.txt.enc
enter AES-256-CBC decryption password:
*** WARNING : deprecated key derivation used.
Using -iter or -pbkdf2 would be better.
bad decrypt
408736D71D7F0000:error:1C800064:Provider routines:ossl_cipher_unpadblock:bad decrypt:../providers/implementations/ciphers/ciphercommon_block.c:124:
picoCTF{h4un71ng_p457_5113beab}%





➜  ~/dev/ctf/pico/operation-orchid cat bash_history
touch flag.txt
nano flag.txt
apk get nano
apk --help
apk add nano
nano flag.txt
openssl
openssl aes256 -salt -in flag.txt -out flag.txt.enc -k unbreakablepassword1234567
shred -u flag.txt
ls -al
halt

