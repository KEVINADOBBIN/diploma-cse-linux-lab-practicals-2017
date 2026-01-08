#!/bin/bash

# Get current month and year
month=$(date +"%B %Y")
day=$(date +"%d")
day=$(echo $day | sed 's/^0//')

echo "$month"
echo "Su Mo Tu We Th Fr Sa"

# Generate calendar using ncal-style logic
ncal -b > daymonth 2>/dev/null || date

# Replace current day
if [ "$day" -lt 9 ]
then
    sed "s/\b$day\b/*/g" daymonth
else
    sed "s/\b$day\b/**/g" daymonth
fi
