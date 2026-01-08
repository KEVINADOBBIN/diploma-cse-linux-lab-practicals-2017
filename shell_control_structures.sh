#!/bin/bash

echo "REGISTER NUMBER: 408CS15015"
echo "EXPERIMENT: SHELL CONTROL STRUCTURES"
echo "-----------------------------------"

echo
echo "1. IF CONDITION"
x=10
y=10
if [ $x -ne $y ]
then
    echo "Numbers are not equal"
else
    echo "Numbers are equal"
fi

echo
echo "2. ELSE-IF CONDITION"
x=21
y=36
z=25
echo "Values are: $x $y $z"

if [ $x -ge $y ] && [ $x -ge $z ]
then
    echo "Greater is $x"
elif [ $y -ge $x ] && [ $y -ge $z ]
then
    echo "Greater is $y"
else
    echo "Greater is $z"
fi

echo
echo "3. FOR LOOP"
for k in 1 2 3 4 5
do
    echo "The number is $k"
    sq=`expr $k \* $k`
    echo "Square of the number is $sq"
done

echo
echo "4. WHILE LOOP"
a=10
b=20
c=30
while [ $a -gt 0 ]
do
    echo "$c $b $a"
    a=`expr $a - 1`
done

echo
echo "5. CASE STATEMENT"
echo "Menu"
echo "1. Your current path"
echo "2. Today date"
echo "3. List of users logged in"
echo "Enter your choice:"
read choice

case $choice in
    1) pwd;;
    2) date;;
    3) who;;
    *) echo "Invalid choice";;
esac

echo
echo "6. AWK FILTER (example)"
echo -e "ram\nchaitra\narun\nchaitra sai" > awk_demo.txt
echo "Searching for 'chaitra' using awk:"
awk '/chaitra/ {print}' awk_demo.txt

echo
echo "Experiment completed successfully."
