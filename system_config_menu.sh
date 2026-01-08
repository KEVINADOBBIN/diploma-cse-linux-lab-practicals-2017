#!/bin/bash

rp="y"

while [ "$rp" = "y" ] || [ "$rp" = "Y" ]
do
    echo
    echo "Select 1 to know your Operating System:"
    echo "Select 2 to know your current PATH setting:"
    echo "Select 3 to know your current working directory:"
    echo "Select 4 to know your available shells:"
    echo "Select 5 to Exit"
    echo "Enter your choice:"
    read choice

    case $choice in
        1) uname;;
        2) echo $PATH;;
        3) pwd;;
        4) cat /etc/shells;;
        5) exit;;
        *) echo "Invalid option";;
    esac

    echo
    echo "Do you want to continue (y/n)?"
    read rp
done
