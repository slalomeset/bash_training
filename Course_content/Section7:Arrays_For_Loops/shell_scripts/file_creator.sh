#!/bin/bash

# iterate over arrays
# for loop

readarray -t files <files.txt

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "$file already exists delete the file"
        rm "$file"
    else
        touch "$file"
        echo "$file was created"
    fi
done
