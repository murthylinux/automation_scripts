#!/bin/bash

# Directory to organize
DIR="/path/to/your/directory"

echo "Organizing files inn $DIR..."

# Loop through files and organize by extension

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        mkdir -p "$DIR/extension"
        mv "$file" "$DIR/$extension/"
    fi
done

echo "File organization completed." 