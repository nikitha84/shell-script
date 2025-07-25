#!/bin/bash

# Set the filename (you can also pass it as a command-line argument)
filename="example.txt"

# Check if the file exists and is a regular file
if [[ ! -f "$filename" ]]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Read the file line by line
while IFS= read -r line; do
    echo "Line: $line"
done < "$filename"

echo -e "Hello\nWorld\n123" > example.txt


