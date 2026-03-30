#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sneha Maria | Reg No: 24BHI10091
# Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================================="
echo "         Disk and Permission Auditor"
echo "=================================================="
echo ""
printf "%-20s %-25s %-10s\n" "Directory" "Permissions" "Size"
echo "--------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-20s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        printf "%-20s %s\n" "$DIR" "does not exist on this system"
    fi
done

echo ""
echo "  Firefox Config Directory Check:"
echo "--------------------------------------------------"

# Check if Firefox personal config directory exists
FIREFOX_CONFIG="$HOME/.mozilla/firefox"
if [ -d "$FIREFOX_CONFIG" ]; then
    FF_PERMS=$(ls -ld "$FIREFOX_CONFIG" | awk '{print $1, $3, $4}')
    FF_SIZE=$(du -sh "$FIREFOX_CONFIG" 2>/dev/null | cut -f1)
    echo "  Path        : $FIREFOX_CONFIG"
    echo "  Permissions : $FF_PERMS"
    echo "  Size        : $FF_SIZE"
else
    echo "  Firefox config not found at $FIREFOX_CONFIG"
    echo "  Firefox may not have been launched yet."
fi

echo "=================================================="
