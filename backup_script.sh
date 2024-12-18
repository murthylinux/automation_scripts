#!/bin/bash

# Directory to backup
SOURCE_DIRS="/home /etc"

# Backup destination
BACKUP_DIR="/backup"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +'%Y-%m-%d_%H-%M').tar.gz"


# Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

echo "Backing up $SOURCE_DIRS to $BACKUP_FILE...."

# Create a compressed backup
tar -czf "$BACKUP_FILE" $SOURCE_DIRS

if [ $? -eq 0 ]; then
    echo "Backup successful."
else
    echo "Backup failed."
fi 


