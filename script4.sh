#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sneha Maria | Reg No: 24BHI10091
# Course: Open Source Software
# Usage: ./script4.sh /var/log/syslog [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "=================================================="
echo "           Log File Analyzer"
echo "=================================================="
echo ""

# Validate that a log file argument was provided
if [ -z "$LOGFILE" ]; then
    echo "  Usage: ./script4.sh <logfile> [keyword]"
    echo "  Example: ./script4.sh /var/log/syslog error"
    exit 1
fi

# Retry loop if file doesn't exist or is empty
RETRIES=3
ATTEMPT=1
while [ $ATTEMPT -le $RETRIES ]; do
    if [ ! -f "$LOGFILE" ]; then
        echo "  Attempt $ATTEMPT: File '$LOGFILE' not found. Retrying..."
        ATTEMPT=$((ATTEMPT + 1))
        sleep 1
    elif [ ! -s "$LOGFILE" ]; then
        echo "  Attempt $ATTEMPT: File '$LOGFILE' is empty. Retrying..."
        ATTEMPT=$((ATTEMPT + 1))
        sleep 1
    else
        break
    fi
done

# Exit if file still not valid after retries
if [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; then
    echo "  Could not read a valid log file after $RETRIES attempts."
    exit 1
fi

echo "  Log File : $LOGFILE"
echo "  Keyword  : '$KEYWORD'"
echo "--------------------------------------------------"

# Read file line by line and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "  Keyword '$KEYWORD' found $COUNT times."
echo ""
echo "  Last 5 matching lines:"
echo "--------------------------------------------------"

# Print last 5 lines containing the keyword
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "=================================================="
