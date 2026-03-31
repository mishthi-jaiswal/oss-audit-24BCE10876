#!/bin/bash
#Script 3:disk and Permission Auditor
# Author:Mishthi Jaiswal

#List of important directories below
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo ""
# we need to Loop through each directory
for DIR in "${DIRS[@]}"; do
    # we check whether directory exists
    if [ -d "$DIR" ]; then
        # now get permissions,owner,group
        Perms=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get size of directory
        size=$(du -sh $DIR 2>/dev/null | cut -f1)
        # now we display result
        echo "$DIR => Permissions: $Perms | Size:$size"
    else
        echo "$DIR does not exist !!!"
    fi
done
echo ""
#here we check Python config directory
CONFIG_DIR="/etc/python3"
if [ -d "$CONFIG_DIR" ]; then
    Perms=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "Python Config Directory: $CONFIG_DIR => $Perms"
else
    echo "Python config directory was not found!!!"
fi