Script 2 — FOSS Package Inspector
#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sneha Raj | Course: Open Source Software

# --- Configuration ---
# You can change this to vlc, firefox, or any other package from the list
PACKAGE="mysql-server" 

echo "Checking system for package: $PACKAGE..."

# --- Check if package is installed ---
# Using dpkg -l for Debian/Ubuntu systems as per Unit 2 standards
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "STATUS: $PACKAGE is installed."
    echo "------------------------------------------"
    # Extracting specific details: Version, License, and Description
    apt-cache show $PACKAGE | grep -E 'Version|License|Description' | head -n 3
else
    echo "STATUS: $PACKAGE is NOT installed."
    echo "Action: Please run 'sudo apt install $PACKAGE' to audit this software."
fi

echo "------------------------------------------"

# --- Philosophy Note using Case Statement ---
# This prints a specific open-source note based on the package name
case $PACKAGE in
    mysql-server|mysql)
        echo "Philosophy: MySQL represents the democratization of data for the modern web." 
        ;;
    httpd|apache2)
        echo "Philosophy: Apache is the foundation that built the open internet." 
        ;;
    vlc)
        echo "Philosophy: VLC proves that student innovation can outmatch proprietary giants." 
        ;;
    firefox)
        echo "Philosophy: Firefox is a non-profit shield protecting the open web." 
        ;;
    *)
        echo "Philosophy: This tool embodies the collaborative spirit of Open Source." 
        ;;
esac
echo "=========================================="
