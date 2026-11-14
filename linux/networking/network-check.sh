#!/bin/bash

echo "Network Check"
echo

echo "Interfaces:"
ip -brief addr

echo
echo "Routes:"
ip route

echo
echo "Listening:"
ss -tuln

echo
echo "Ping:"
ping -c 2 1.1.1.1

echo
echo "DNS:"
dig example.com +short

echo
echo "HTTP:"
curl -Is --max-time 5 https://example.com | head -n 1
