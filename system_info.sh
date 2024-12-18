## This script to get system information

#!/bin/bash

echo "System Information"

echo "-----------------"
echo "Hostname:    $(hostname)"
echo "Operating System: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "Machine Type: $(uname -m)"
echo "Processor: $(uname -p)"
echo "Release: $(uname -s)"
echo "Version: $(uname -v)"

# CPU, Memory and Disk Usage
echo "-----------------"
echo "CPU Info: $(lscpu | grep 'Model Name' | awk -F: '{print $2}')"
echo "Memory Usage: $(free -h | grep mem | awk '{print $3 "/" $2}')"
echo "Disk Usage: $(df -h | grep '/$' | awk '{print $3 "/" $2}')" 
 