#!/bin/bash
            
# File to read (passed as the first argument)
filename="$1"
            
# Check if file exists
if [[ ! -z "$filename" ]]; then
echo "File not found!"
exit 1
fi
            
# Read the file line by line
while IFS= read -r line; do
cho "Line: $line"
done < "$filename"

