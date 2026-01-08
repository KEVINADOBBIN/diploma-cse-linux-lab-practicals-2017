#!/bin/bash

echo "===== WORKING WITH FILES AND DIRECTORIES ====="
echo

echo "----- Creating Directory Structure -----"
mkdir -p linux1/linux2/linux3
echo "Directories linux1/linux2/linux3 created"

echo
echo "----- RELATIVE PATH DEMO -----"
cd linux1 || exit
pwd
cd linux2
pwd
cd linux3
pwd

echo
echo "----- COMING OUT OF DIRECTORY -----"
cd ..
pwd
cd ..
pwd
cd ..
pwd

echo
echo "----- ABSOLUTE PATH DEMO -----"
cd "$(pwd)/linux1/linux2/linux3"
pwd

echo
echo "----- CURRENT DIRECTORY (cd .) -----"
cd .
pwd

echo
echo "----- PARENT DIRECTORY (cd ..) -----"
cd ..
pwd

echo
echo "===== FILE RELATED COMMANDS ====="

cd linux1/linux2/linux3 || exit

echo
echo "----- CREATING FILES USING CAT -----"
echo "hi how are you" > f1
echo "im fine, how are you" > f2
cat f1
cat f2

echo
echo "----- COPYING FILE (cp) -----"
cp f1 f3
cat f3

echo
echo "----- MOVING FILE (mv) -----"
mv f3 f4
cat f4

echo
echo "----- REMOVING FILE (rm) -----"
rm f4
ls

echo
echo "----- COMM COMMAND -----"
sort f1 > sf1
sort f2 > sf2
comm sf1 sf2

echo
echo "----- CMP COMMAND -----"
cmp f1 f2 || echo "Files are different"

echo
echo "----- DIFF COMMAND -----"
diff f1 f2 || echo "Differences shown above"

echo
echo "----- TAR COMMAND -----"
cd ../../..
tar -cvf linux_backup.tar linux1

echo
echo "----- UMASK COMMAND -----"
umask
umask 0025
umask
umask 0002

echo
echo "----- WC COMMAND -----"
wc linux1/linux2/linux3/f1

echo
echo "===== PROGRAM EXECUTION COMPLETED ====="
