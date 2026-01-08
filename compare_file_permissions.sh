#!/bin/bash

echo "Enter the 1st filename:"
read a

echo "Enter the 2nd filename:"
read b

# Check if files exist
if [ ! -e "$a" ] || [ ! -e "$b" ]
then
    echo "One or both files do not exist"
    exit 1
fi

# Get only permission bits
p1=$(ls -l "$a" | awk '{print $1}')
p2=$(ls -l "$b" | awk '{print $1}')

# Compare permissions
if [ "$p1" = "$p2" ]
then
    echo "Same permission: $p1"
else
    echo "Different permission."
    echo
    echo "$a = $p1"
    echo "$b = $p2"
fi
