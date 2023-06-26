#!/usr/bin/env bash
# A command to create the directory
DIRECTORY="0323-RW-SOFEN-8120120-7-q1"
mkdir -p "$DIRECTORY"

# A command that moves the files to the directory
mv main.sh "$DIRECTORY"
mv students-list_0333.txt "$DIRECTORY"
mv Select-emails.sh "$DIRECTORY"
mv student-emails.txt "$DIRECTORY"

echo "Files moved to $DIRECTORY successfully!"
