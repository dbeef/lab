#!/bin/bash

wget https://mercury.picoctf.net/static/b686a99ec088f10b324cfe963bd32dab/tftp.pcapng

# 1. Export files with Wireshark:
# Go to Edit > Preferences > Protocols > TFTP and enable "Allow subdissector to reassemble TFTP streams."
# Then go to File > Export Objects > TFTP . Find and highlight the file and click "Save As."

# OR from command line:
# https://tshark.dev/export/export_regular/
# tshark -r mypcap.pcap --export-objects "tftp,destdir"
# but it didn't export all files, only the text ones :(

# 2. Extract the .deb archive - find out it contains steghide
# 3. instructions.txt - rot13 - TFTPDOESNTENCRYPTOURTRAFFICSOWEMUSTDISGUISEOURFLAGTRANSFER.FIGUREOUTAWAYTOHIDETHEFLAGANDIWILLCHECKBACKFORTHEPLAN
# 4. plan - rot13 - IUSEDTHEPROGRAMANDHIDITWITH-DUEDILIGENCE.CHECKOUTTHEPHOTOS
# 5. pass is DUEDILIGENCE, use steghide - steghide  extract -sf ./picture3.bmp



# Note:

# Some packet captures contain files in transit. Wireshark can extract several of these types. As of v3.0.0, Wireshark can extract these protocols:
    # dicom: medical image
    # http: web document
    # imf: email contents
    # smb: Windows network share file
    # tftp: Unsecured file
# To do this in tshark, use tshark -r ${file} --export-object ${protocol},${path} (WS > File > Export Objects >).
# If you would like to extract files from a TLS-encrypted capture, you will need to first decrypt it.
# https://tshark.dev/packetcraft/add_context/tshark_decryption/

