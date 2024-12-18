#!/bin/bash

# Inactive period in days
INACTIVE_DAYS=30

echo "Finding users inactive for $INACTIVE_DAYS days..."

# find and remove inactive users
inactive_users=$(lastlog -b $INACTIVE_DAYS | awk 'NR>1 && $3=="**Never logged in**" {print $1}')
for user in $inactive_users; do 
    echo "Removing user: $user..."
    sudo userdel -r $user 
done

echo "User account cleaup completed." 


