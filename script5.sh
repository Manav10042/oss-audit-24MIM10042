#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer these questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word): " FREEDOM
read -p "3. What will you build and share: " BUILD

DATE=$(date)
FILE="manifesto.txt"

echo "" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "Date: $DATE" >> $FILE
echo "" >> $FILE
echo "I use $TOOL in my daily life." >> $FILE
echo "For me, freedom means $FREEDOM." >> $FILE
echo "I believe in sharing knowledge openly." >> $FILE
echo "I will build $BUILD and make it available to everyone." >> $FILE

echo ""
echo "Manifesto saved in $FILE"
echo "-------------------------"
cat $FILE