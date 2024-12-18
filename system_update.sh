#!/bin/bash

echo "Starting system update..."

# update package lists and upgrade installed packages
sudo apt update && sudo apt upgrade -y

if [ $? -eq 0 ]; then
    echo "System update completed."
else:
    echo "System update failed."
fi

echo "Cleaning up unused packages..."

# Clean up old packages
sudo apt autoremove -y && sudo apt autoclean

echo "System cleanup completed..."