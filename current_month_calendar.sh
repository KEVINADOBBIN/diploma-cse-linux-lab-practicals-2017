#!/bin/bash

# Store current month calendar in a file
cal > daymonth

# Get current day of month
day=$(date +"%d")
day=$(echo $day | sed 's/^0//')   # remove leading zero

# If day is less than 9 use '*', else use '**'
if [ $day -lt 9 ]
then
    sed "s/\b$day\b/*/g" daymonth
else
    sed "s/\b$day\b/**/g" daymonth
fi
