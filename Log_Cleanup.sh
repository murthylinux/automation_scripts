#!/bin/bash

#Directory to clean up
LOG_DIR="/var/log"

#Number of days to keep Logs
DAYS=7

echo "Cleaning up logs older than $DAYS days in $LOG_DIR..." 

# find and delete log files older than specified days
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Log cleanup completed."


