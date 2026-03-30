#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sneha Maria | Reg No: 24BHI10091
# Course: Open Source Software

echo "=================================================="
echo "       Open Source Manifesto Generator"
echo "    Author: Sneha Maria | Reg: 24BHI10091"
echo "=================================================="
echo ""
echo "  Answer three questions to generate your manifesto."
echo ""

# Collect user input interactively
read -p "  1. Name one open-source tool you use every day: " TOOL
read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "  3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "  Generating your manifesto..."
echo ""

# Compose and write the manifesto paragraph to a file
{
echo "=================================================="
echo "  My Open Source Manifesto"
echo "  By: Sneha Maria | Reg No: 24BHI10091"
echo "  Date: $DATE"
echo "=================================================="
echo ""
echo "  Every day, I rely on $TOOL — a tool built not for"
echo "  profit, but for people. To me, freedom means $FREEDOM,"
echo "  and open source embodies exactly that. It is the"
echo "  freedom to see inside the tools we trust, to improve"
echo "  them, and to pass them on better than we found them."
echo ""
echo "  One day, I hope to build $BUILD and share it freely"
echo "  with the world — because the greatest software was"
echo "  never owned. It was given. Standing on the shoulders"
echo "  of every developer who chose openness over ownership,"
echo "  I choose the same."
echo ""
echo "=================================================="
} > "$OUTPUT"

# Display the saved manifesto on screen
cat "$OUTPUT"
echo ""
echo "  Manifesto saved to: $OUTPUT"
echo "=================================================="
