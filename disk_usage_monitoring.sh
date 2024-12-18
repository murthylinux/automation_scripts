#/bin/bash

# Disk usage threshold percentage

THRESHOLD=80

echo "Checking the disk usage...."

# check disk usage for each mounted filesystem
df -h | awk 'NR>1 {print $5 " " $1}' | while read output; do 
    usage=$(echo $output | awk '{print $1}' | sed 's/%//g')
    filesystem=$(echo $output | awk '{print $2}')


    if [ $usage -ge $THRESHOLD ]; then
        echo "Warning: $filesystem is ${usage}% full."
    fi 
done

