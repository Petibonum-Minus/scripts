#!/bin/bash

# récupérer le dernier streak
last_streak=$(awk 'END {print}' streak.txt | awk '{print $NF}')

# récupérer le streak du jour
streak=$(curl https://tryhackme.com/p/petibonum.minus 2>/dev/null | grep -oP '</i>.*</span>' | sed 's/[^0-9]//g')

# afficher la date et le streak du jour dans le fichier streak.txt
date >> streak.txt
echo 'Streak du : '$streak >> streak.txt

#echo $last_streak
#echo $streak

# XOR pour comparer le last_streak et le streak
compare=$(( $last_streak ^ $streak ))
#echo $compare
if (($compare > 0))
then 
    echo 'OK';
else
    echo 'ALERT --> Faire une question';
fi
