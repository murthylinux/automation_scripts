#!/bin/bash

# Threshold for CPU usage percentage
THRESHOLD=75
LOGFILE="/var/log/cpu_usage.log"

echo "Monitoring CPU usage..."

# Monitor CPU usuage
while true; do 
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    if (( $(echo "$cpu_usage > $THRESHOLD" | bc -l) )); then
        echo "$(date): High CPU usage detected: $cpu_usage%" >> $LOGFILE
    fi
    sleep 5
done