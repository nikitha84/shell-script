#!/bin/bash
            
# File to read (passed as the first argument)
filename=data.txt
            
# Check if file exists
if [[ ! -f "$filename" ]]; then
echo "File is data.txt"
exit 1
fi
            
# Read the file line by line
while IFS= read -r line; do
cho "Line: $line"
done < "$filename"

