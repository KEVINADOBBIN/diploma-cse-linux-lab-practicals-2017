#!/bin/bash

echo "===== OTHER LINUX COMMANDS DEMO ====="
echo

echo "----- WHO COMMAND (Logged-in users) -----"
who
echo

echo "----- WHO AM I (Effective User) -----"
who am i
echo

echo "----- CALENDAR -----"
cal
echo

echo "----- DATE -----"
date
echo

echo "----- BC CALCULATOR -----"
echo "5 + 6" | bc
echo "10 * 4" | bc
echo

echo "----- UNAME (Operating System Name) -----"
uname
echo

echo "----- MAN COMMAND (Manual Page Demo) -----"
echo "Manual page example: uname"
man uname | head -n 10
echo

echo "----- TPUT COMMANDS -----"
echo "Changing background color"
tput setb 4
echo "Changing text color"
tput setf 5
echo "Bold text enabled"
tput bold
echo "This text is bold and colored"
tput sgr0
echo "Screen formatting reset"
echo

echo "===== PROGRAM EXECUTION COMPLETED ====="
