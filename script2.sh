#!/bin/bash
#Script 2:FOSS Package Inspector
#author:Mishthi Jaiswal

#Package name is given below
Package="python3"
#Check whether a  package is installed or not
if dpkg -l | grep -q "^ii  $Package"; then
    echo "$Package is installed."
    #Display the version, details
    dpkg -s $Package | grep -E 'Version|Maintainer|Description'
else
    echo "$Package has not been installed."
fi
echo ""
#philosophy note's case statement
case $Package in
    python3)
        echo "Python: a powerful open-source language that driven by community and simplicity!"
        ;;
    git)
        echo "Git: is version control system that revolutionize collaborate development"
        ;;
    vlc)
        echo "VLC: its a media player that plays everything free of cost without any restrictions."
        ;;
    firefox)
        echo "firefox:it is a browser built to protect openness and users privacy"
        ;;
    *)
        echo "Unknown package: open source software that empowering innovation."
        ;;
esac