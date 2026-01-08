#!/bin/bash

echo "-----------------------------------------"
echo "EXPERIMENT NO: 14"
echo "FILE EXISTENCE CHECK USING ARGUMENTS"
echo "-----------------------------------------"

# Check for sufficient number of arguments
if [ $# -ne 1 ]
then
    echo "Usage: $0 filename"
    exit 1
fi

# Check whether file exists
if [ -f "$1" ]
then
    echo "$1 file exists"
else
    echo "Sorry, $1 file does not exist"
fi
