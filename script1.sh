#!/bin/bash
# Script 1: System Identity Report
# Author: Sneha Raj | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Sneha Raj"          # Fill in your name [cite: 106]
SOFTWARE_CHOICE="MySQL"             # Fill in your chosen software [cite: 107]

# --- System info ---
KERNEL=$(uname -r)                  # Fetches kernel version [cite: 110]
USER_NAME=$(whoami)                 # Fetches current user [cite: 110]
UPTIME=$(uptime -p)                 # Fetches system uptime [cite: 111]
HOME_DIR=$HOME                      # Fetches home directory [cite: 96]
DISTRO=$(cat /etc/os-release | grep ^PRETTY_NAME | cut -d'"' -f2) # Distro name [cite: 95]
CURRENT_DATE=$(date)                # Current date and time [cite: 97]

# --- Display ---
echo "=========================================="
echo " Open Source Audit - $STUDENT_NAME" [cite: 117, 118]
echo "=========================================="
echo "Kernel          : $KERNEL" [cite: 120]
echo "User            : $USER_NAME" [cite: 121, 122]
echo "Home Directory  : $HOME_DIR" [cite: 96]
echo "Distribution    : $DISTRO" [cite: 95, 124]
echo "System Uptime   : $UPTIME" [cite: 123]
echo "Current Date    : $CURRENT_DATE" [cite: 97, 124]
echo "------------------------------------------"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "License Message : This system is covered by the GNU GPL Open Source License." [cite: 98, 124]
echo 
