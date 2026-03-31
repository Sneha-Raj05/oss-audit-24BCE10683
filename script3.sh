#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sneha Raj | Course: Open Source Software

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------"

# Use a for loop to iterate through the directories 
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting permissions, owner, and group using ls -ld and awk 
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Extracting directory size using du 
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# TODO: Check for MySQL specific config directory [cite: 162]
MYSQL_CONFIG="/etc/mysql"
if [ -d "$MYSQL_CONFIG" ]; then
    echo "--------------------------"
    echo "Software Config Directory Found: $MYSQL_CONFIG"
    ls -ld $MYSQL_CONFIG | awk '{print "Permissions: ", $1, "Owner: ", $3}'
fi
