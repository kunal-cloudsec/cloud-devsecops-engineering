#!/bin/bash

echo "Linux Health Check"
echo

echo "Hostname:"
hostname

echo
echo "Uptime:"
uptime

echo
echo "Kernel:"
uname -r

echo
echo "Disk:"
df -h /

echo
echo "Memory:"
free -h

echo
echo "Load:"
cat /proc/loadavg

echo
echo "Network:"
ip -brief addr

echo
echo "Internet:"
curl -Is --max-time 5 https://example.com | head -n 1 | grep . || echo "Offline"
