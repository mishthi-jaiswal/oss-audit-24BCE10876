#!/bin/bash
#Script 1:System Identity Report
# Author: Mishthi Jaiswal| Course:Open Source Software

# Below the Variables(basic information about student,project)
StudentName="Mishthi Jaiswal"
SoftwareChoice="Python"
#we are fetching the system information
Kernel=$(uname -r)        # we are getting kernel version
USER_NAME=$(whoami)      # now we get current user
uptime=$(uptime -p)      # this gets system uptime
date=$(date)             # Gets current date and time
#we get Linux distribution name below
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)
#Get home directory of the user
HOME_DIR=$HOME
#now we display an output in formatted way
echo "======================================="
echo "   Open Source Audit — $StudentName"
echo "========================================="
echo "Software Chosen by me : $SoftwareChoice"
echo ""
echo "OS Distro  : $DISTRO"
echo "Kernel     : $Kernel"
echo "User       : $USER_NAME"
echo "Home Dir   : $HOME_DIR"
echo "Uptime     : $uptime"
echo "Date & Time: $date"

# we display License message
echo "This system is powered by an open-source software under the GNU General Public License (GPL)"
echo "================================================="