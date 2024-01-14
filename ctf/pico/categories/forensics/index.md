# Disk image manipulation

* (./unforgotten-bits)[./unforgotten-bits] - complicated, story-like - TODO: A good writeup
* (./disk-disk-sleuth)[./disk-disk-sleuth] - srch-strings from sleuthkit
* (./disk-disk-sleuth-2)[./disk-disk-sleuth-2] - list files using sleuthkit, extract file with the flag
* (./sleuthkit-intro)[./sleuthkit-intro] - get partition size from image using sleuthkit
* (./sleuthkit-apprentice)[./sleuthkit-apprentice] - retrieve file from image using sleuthkit
* (./pitter-patter-platters)[./pitter-patter-platters] - flag hidden in slack space (grep/autopsy)
* (./operation-oni)[./operation-oni] - get SSH keys and connect ot remote
* (./operation-orchid)[./operation-orchid] - openssl usage, decrypting file - TODO: A good writeup for openssl usage

**Tools: sleuthkit, autopsy**

# Wireshark

* (./wireshark-doo-dooo-do-doo)[./wireshark-doo-dooo-do-doo] - FIXME: Description missing
* (./packets-primer)[./packets-primer] - just open the file, simple
* (./wpa-ing-out)[./wpa-ing-out] - hashcat usage to crack the password
* (./trivial-flag-transfer-protocol)[./trivial-flag-transfer-protocol] - Extracting multiple (TFTP) files from pcap + steghide
* (./pcap-poisoning)[./pcap-poisoning] - Wireshark, the flag is in one of the packets, plain in the open
* (./shark-on-wire-1)[./shark-on-wire-1] - call `tshark` to dump all frames; filter src/dst IP; dump packet data; call `xxd` to convert hex bytes to ASCII
* (./wireshark-twoo-twooo-two-twoo)[./wireshark-twoo-twooo-two-twoo] - call tshark to dump all frames; filter DNS frames; export all HTTP objects to file;
* (./scrambled-bytes)[./scrambled-bytes] - a timing attack; seed generated from time; re-assemble the packet; TODO: A better writeup as my solution was shitty

* (./find-and-open)[./find-and-open] - TODO - Unsolved <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
* (./webnet0)[./webnet0] - TODO - Unsolved <<<<<<<<<<<<<<<<<<<<<<<<

**Tools: wireshark/tshark, hashcat, xxd**

# Steganography

* (./glory-of-the-garden)[./glory-of-the-garden] - grep
* (./enhance)[./enhance] - grep
* (./investigative-reversing-0) - you get an image and the binary used to embed message
* (./msb)[./msb] - stegsolve, hidden in the first MSB bits 
* (./c0rrupt)[./c0rrupt] - modifying and fixing PNG header
* (./what-lies-within)[./what-lies-within] - stegsolve, hidden in 0/0/0 RGB (LSB)
* (./so-meta)[./so-meta] - Simple grep 
* (./information)[./information] - exiftool to read base64 encoded flag
* (./hideme)[./hideme] - Using binwalk to extract data hidden in the chunk; using pngcheck to find out there's extra data in the PNG
* (./st3g0)[./st3g0] - stegsolve, hidden in 0/0/0 RGB (LSB)
* (./matryoshka-doll)[./matryoshka-doll] - Using binwalk recursively
* (./advanced-potion-making)[./advanced-potion-making] - File identified as PNG because of similiarity to its magic number; Fix header; Then stegsolve
* (./tunn3l-v1s10n)[./tunn3l-v1s10n] - Fixed BMP header; Bumped image height to reveal hidden part of the image with the flag
* (./milkslap)[./milkslap] - TODO - Unsolved <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
* (./b1g-mac)[./b1g-mac] - TODO - Unsolved <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
* (./invisible-words)[./invisible-words] - TODO - Unsolved <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

**Tools: grep, binwalk, exiftool, pngcheck, stegsolve, steghide, imhex, john, foremost**

# Hash

* (./it-is-my-birthday)[./it-is-my-birthday] - Hash collision "attack"; Upload 2 files with different content yet same MD5sum (more notes inside)

# Misc

* (./white-pages)[./white-pages] - a single file with only whitespace characters
* (./file-types)[./file-types] - unpacking multiple nested archive files - exotic archive types
* (./like1000)[./like1000] - unpacking multiple nested archive files
* (./extensions)[./extensions] - a text file which is an image in reality
* (./m00nwalk)[./m00nwalk] - radio transmission using encoding from Apollo 11
* (./lookey-here)[./lookey-here] - grep
* (./redaction-gone-wrong) - PDF - Flag hidden under a black rectangle; Just select text in any PDF browser
* (./macrohard-weakedge) - Received .pptm presentation (which is a .zip); There's a hidden slide with Base64 encoded flag
