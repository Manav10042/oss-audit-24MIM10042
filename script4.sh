#!/bin/bash

# Script 4: Log File Analyzer

LOGFILE=$1
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

# Read file line by line
while read line
do
    if echo "$line" | grep -i "error" > /dev/null; then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "Total errors: $COUNT"