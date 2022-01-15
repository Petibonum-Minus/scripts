#!/bin/bash

# Color Zone
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

# ASCII ART     
figlet -t -k -f /usr/share/figlet/small.flf "VOLATILITY by Petibonum!!"

# Intro
echo -e "${GREEN}\nVolatility is use to analyze memory dump.
Please use to volatility -h to see all function.${ENDCOLOR}"

echo -e "${GREEN}All memory dump has to be stored in a specific folder wich is ~/Documents/Forensic/...${ENDCOLOR}"
tree ~/Documents/Forensic/

# Code Zone
## Select folder and file
echo -e "${RED}Select folder ?${ENDCOLOR}"
read folder
echo -e "${RED}Select file ?${ENDCOLOR}"
read file
echo -e "${GREEN}You selected : ~/Documents/Forensic/$folder/$file ${ENDCOLOR}"

## Image info
volatility2 -f ~/Documents/Forensic/$folder imageinfo >> ~/Documents/Forensic/$folder/imageinfo.txt
echo -e "${GREEN}Profiles : ${ENDCOLOR}" 
sed "1q;d" ~/Documents/Forensic/$folder/imageinfo.txt

## Select profile
echo -e "${RED}Select the Profile you need :${ENDCOLOR}"
read profile
echo -e "${GREEN}You selected : $profile ${ENDCOLOR}"

## Select command
read -p "Your command:  " command
    while [[ "$command" != "quit"]]
    do
    echo -e "${GREEN}You selected : $command ${ENDCOLOR}"
    volatility2 -f ~/Documents/Forensic/OpenClassRoom/0C-002-memdump.mem --profile=Win7SP1x86_23418 $command >> ~/Documents/Forensic/OpenClassRoom/$command.txt
    read -p "Your command:  " command
    done
