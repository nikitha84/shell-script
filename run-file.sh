#!/bin/bash

# Check if a file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Read the file line by line
while IFS= read -r line
do
  echo "$line"
done < "$1"
