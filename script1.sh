#!/bin/bash
# Script 1: System Identity Report
# Author: Sneha Maria | Reg No: 24BHI10091
# Course: Open Source Software

STUDENT_NAME="Sneha Maria"
SOFTWARE_CHOICE="Mozilla Firefox"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
DATE_TIME=$(date '+%d %B %Y, %H:%M:%S')
HOME_DIR=$HOME

echo "=================================================="
echo "     Open Source Audit — $STUDENT_NAME"
echo "=================================================="
echo ""
echo "  Student     : $STUDENT_NAME"
echo "  Reg No      : 24BHI10091"
echo "  Software    : $SOFTWARE_CHOICE"
echo ""
echo "  Distribution: $DISTRO"
echo "  Kernel      : $KERNEL"
echo "  User        : $USER_NAME"
echo "  Home Dir    : $HOME_DIR"
echo "  Uptime      : $UPTIME"
echo "  Date/Time   : $DATE_TIME"
echo ""
echo "  License Note: The Linux OS running this system"
echo "  is covered under the GNU General Public License"
echo "  v2 (GPL v2) — free to use, study, and share."
echo "=================================================="
