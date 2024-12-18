#!/bin/bash

# Service to check
SERVICE="apache2"

echo "Checking status of $SERVICE service..."

# Check if the service is running
if systemctl is-active --quiet $SERVICE; the 
    echo "$SERVICE is running." 
else
    echo "$SERVICE is not running, Restarting..."
    sudo systemctl start $SERVICE
    if systemctl is-active --quiet $SERVICE; then
        echo "$SERVICE restart successfully."
    else
        echo "Failed to restart $SERVICE."
    fi
fi 