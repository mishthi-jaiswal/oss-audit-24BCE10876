#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Mishthi Jaiswal
echo "Answer 3 questions to generate manifesto."
echo ""
# we are taking user input
read -p "1. Name one open source tool which you use every single day: " TOOL
read -p "2. In 1 word, what does 'freedom' means to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
#Getting current date
DATE=$(date '+%d %B %Y')
#Now the Output file
OUTPUT="manifesto_$(whoami).txt"
#Compose manifesto para below
echo "On $DATE, I, $(whoami), believe in power of opensource software... Tools like $TOOL inspire innovation and collaboration as well. To me, freedom mean>
#This is a Alias concept
#alias showmanifesto='cat $OUTPUT'
#Now we have to display result
echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT