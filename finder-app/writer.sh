#!/bin/bash

# Check if the number of arguments is not equal to 2
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: $0 <file-path> <write-string>"
    exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Create a new file with the specified content, overwriting any existing file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: The file '$writefile' could not be created."
    exit 1
fi

echo "File '$writefile' created successfully with content: $writestr"

exit 0
