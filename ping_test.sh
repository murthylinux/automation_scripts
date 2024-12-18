#!/bin/bash

# List of servers to ping
SERVERS=("google.com" "github.com" "yahoo.com")

echo "Performing ping test..."

for server in "${SERVERS[@]}"; do
    if ping -c 3 "$SERVERS" &> /dev/null; then
        echo "Server $SERVERS is reachable!"
    else   
        echo "Server $SERVERS is not reachable!
done