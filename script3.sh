#!/bin/bash

# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/tmp" "/c/Users/Public")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"
do
    echo "Checking: $DIR"   # 🔥 DEBUG LINE

    if [ -d "$DIR" ]; then
        PERM=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -s "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR not found"
    fi
done