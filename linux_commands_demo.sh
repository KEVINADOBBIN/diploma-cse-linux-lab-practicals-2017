#!/bin/bash

echo "===== INTERNAL COMMANDS ====="

# Echo command
echo "welcome to linux lab"
echo -n "welcome to\nlinux lab"
echo
echo -e "welcome to\nlinux lab"

echo
echo "===== TYPE COMMAND ====="
type cal
type bc
type date

echo
echo "===== PWD COMMAND ====="
pwd

echo
echo "===== EXTERNAL COMMANDS ====="

# Create directory
mkdir linux1
echo "Directory linux1 created"

# Change directory
cd linux1 || exit
echo "Changed to directory linux1"

# Create file using cat
echo "this is linux lab" > file
echo "File created using cat"

# View file
echo "Contents of file:"
cat file

# Copy file
cp file file1
echo "File copied to file1"
cat file1

# Move (rename) file
mv file file2
echo "File renamed to file2"
cat file2

# Remove file
rm file1
echo "file1 removed"

# Verify removal
echo "Trying to display removed file:"
cat file1 2>/dev/null || echo "file1 does not exist"

echo
echo "===== PROGRAM EXECUTION COMPLETED ====="
