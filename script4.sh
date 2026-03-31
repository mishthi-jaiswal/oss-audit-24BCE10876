#!/bin/bash
#Script 4:Log File Analyzer
#Author: Mishthi Jaiswal

#here we take input from command line
LogFile=$1
KEYWORD=${2:-"error"}   #here the default keyword is "error"
count=0
# we are checking if file exist or not
if [ ! -f "$LogFile" ]; then
    echo "Error: File $LogFile not found!!!"
    exit 1
fi
#we check if file is empty
if [ ! -s "$LogFile" ]; then
    echo "File is empty!Please try another file"
    exit 1
fi
# now we have to read file line by line
while IFS= read -r LINE; do
    # Checking  whether line contains keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        count=$((count + 1))
    fi
done < "$LogFile"
# Printing result
echo "Keyword '$KEYWORD' found $count times in $LogFile"
echo ""
#now we are showing last 5 matching line
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LogFile" | tail -5