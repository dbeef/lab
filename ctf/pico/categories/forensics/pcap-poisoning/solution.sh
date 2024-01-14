#!/bin/bash

wget https://artifacts.picoctf.net/c/377/trace.pcap
# Open in Wireshark and navigate to packet:
# 5070.101720172.16.0.210.253.0.6TCP82[TCP Retransmission] [TCP Port numbers reused] 20 → 21 [SYN] Seq=0 Win=8192 Len=42
# (flag is plain in the open)


