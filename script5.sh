#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sneha Raj | Course: Open Source Software

echo "Answer three questions to generate your personalized manifesto."
echo

# Using 'read' for interactive user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Capture the current date
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph using string concatenation
MANIFESTO="On this day, $DATE, I declare my commitment to the open-source community. 
The tool I rely on most is $TOOL, which serves as a reminder that software 
should embody $FREEDOM. In the spirit of collaboration, I pledge to build 
$BUILD and share it openly with the world."

# Write the manifesto to a file
echo "$MANIFESTO" > "$OUTPUT"

echo "------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "------------------------------------------"
# Display the content of the generated file
cat "$OUTPUT"
