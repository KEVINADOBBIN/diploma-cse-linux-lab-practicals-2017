#!/bin/bash

echo "Enter the filename:"
read file1

# Check whether file exists
if [ ! -e "$file1" ]
then
    echo "File does not exist"
    exit 1
fi

# Display current permission
p1=$(ls -l "$file1" | cut -c 2-10)
echo "To display the file permission $file1: $p1"

echo "Enter the file permission (numeric value):"
read nval

# Change permission
chmod "$nval" "$file1"

# Display changed permission
p2=$(ls -l "$file1" | cut -c 2-10)
echo "To display changed file permission $file1: $p2"
