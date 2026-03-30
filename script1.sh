#!/bin/bash

STUDENT_NAME="Manav"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
DATE=$(date)

echo "=========================="
echo " Open Source Audit"
echo "=========================="
echo "Name   : $STUDENT_NAME"
echo "User   : $USER_NAME"
echo "Kernel : $KERNEL"
echo "Date   : $DATE"