#!/bin/bash

# Script 2: Package Inspector

PACKAGE="git"

# Check if installed
if command -v $PACKAGE > /dev/null
then
    echo "$PACKAGE is installed"
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed"
fi

# Description using case
case $PACKAGE in
    git) echo "Git: version control system used to track code changes" ;;
    vlc) echo "VLC: open source media player" ;;
    firefox) echo "Firefox: open source web browser" ;;
    python) echo "Python: programming language" ;;
    *) echo "Unknown package" ;;
esac