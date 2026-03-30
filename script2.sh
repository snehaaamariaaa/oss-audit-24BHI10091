#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sneha Maria | Reg No: 24BHI10091
# Course: Open Source Software

PACKAGE="firefox"

echo "=================================================="
echo "         FOSS Package Inspector"
echo "=================================================="
echo ""

# Check if package is installed using rpm or dpkg
if command -v rpm &>/dev/null; then
    if rpm -q $PACKAGE &>/dev/null; then
        echo "  [$PACKAGE] is INSTALLED (RPM-based system)"
        echo ""
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    else
        echo "  [$PACKAGE] is NOT installed on this system."
    fi
elif command -v dpkg &>/dev/null; then
    if dpkg -l $PACKAGE &>/dev/null 2>&1 | grep -q "^ii"; then
        echo "  [$PACKAGE] is INSTALLED (Debian-based system)"
        echo ""
        dpkg -l $PACKAGE | grep -E 'Version|Description'
    else
        echo "  [$PACKAGE] is NOT installed on this system."
    fi
else
    echo "  Package manager not detected. Checking binary..."
    if command -v $PACKAGE &>/dev/null; then
        echo "  [$PACKAGE] binary found at: $(which $PACKAGE)"
    else
        echo "  [$PACKAGE] not found."
    fi
fi

echo ""
echo "  Philosophy Note:"
echo "--------------------------------------------------"

# Case statement with philosophy notes for each package
case $PACKAGE in
    firefox)
        echo "  Firefox: A nonprofit fighting for an open web —"
        echo "  proof that privacy and freedom can beat profit." ;;
    httpd|apache2)
        echo "  Apache: The web server that built the open internet." ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps." ;;
    python3|python)
        echo "  Python: A language shaped entirely by its community." ;;
    git)
        echo "  Git: The tool Linus built when proprietary failed him." ;;
    *)
        echo "  Open source: built by many, owned by none." ;;
esac

echo "=================================================="
