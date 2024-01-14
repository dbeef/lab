#!/bin/bash

wget https://mercury.picoctf.net/static/0fe13a33318e756f71c35cb490e64c81/shark2.pcapng

tshark -r ./shark2.pcapng -Y "dns && (ip.dst == 18.217.1.57)" -w relevant.pcapng
tshark -r ./relevant.pcapng   > data
cat data | grep -F reddshrimpandherring.com.windomain.local

# Now paste this in CyberChef

# Notes:
# 1.
# tshark can accept an elaborate filter, i.e:
# tshark -r ./capture.pcap -Y "udp && ip.src == 10.0.0.2 && (ip.dst == 10.0.0.13 || ip.dst == 10.0.0.12) && \!icmp" -w relevant.pcapng
#
# The very same filter syntax works in Wireshark GUI.
#
# 2.
# First thing I tried was exporting HTTP objects with File->Export objects-> HTTP and then search for a flag with grep.
# There was a lot of false-flags, none of which seemed to be a valid one - but this method is worth noting.
#
# 3.
# Things (tshark calls) I learned from this writeup: https://github.com/Dvd848/CTFs/blob/master/2021_picoCTF/Wireshark_twoo_twooo_two_twoo.md
#
# pcap summary:
# tshark -qz io,phs -r shark2.pcapng
#
# log all the packets containing 'pico' in text:
# tshark -nr shark2.pcapng -Y 'frame contains "pico"' -T fields -e text
#
# One step less than I did? Without re-exporting to other .pcap file?
# tshark -nr shark2.pcapng -Y 'dns'

