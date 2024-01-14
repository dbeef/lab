#!/bin/bash

wget https://jupiter.challenges.picoctf.org/static/483e50268fe7e015c49caf51a69063d0/capture.pcap

tshark -r ./capture.pcap -Y "udp && ip.src == 10.0.0.2 && ip.dst == 10.0.0.12 && \!icmp" -w relevant.pcapng
tshark -r ./relevant.pcapng -T fields -e data.data > data

# Hex bytes to ASCII:
cat data |  xxd -r -p

