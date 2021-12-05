#!/bin/bash

# S'il y a internet sur l'hôte victime alors décommenter la ligne suivante :
#find / -user root -perm /4000 2>/dev/null >> priv1.txt

# Code principal
cat priv1.txt | sed -e 's,/, ,g' >> priv2.txt
grep -oE '[^ ]+$' priv2.txt >> priv3.txt
sed 's/[[:blank:]]*$//;s/.*[[:blank:]]//' priv3.txt >> priv4.txt

rm priv1.txt priv2.txt priv3.txt

echo "Les potentielles élévations de privilège sont les suivantes : " >> results.txt

for line in $(cat priv4.txt); 
do 
    var=$(curl https://gtfobins.github.io/gtfobins/ash/ 2>/dev/null | grep "<pre><code>" | sed 's+<pre><code>++g' | sed 's+</code></pre>++g')
    
    if [ -z "$var" ]; then
        echo "Pour $line --> pas de résultat"
else 
    echo "Pour $line --> VICTOIRE un résultat !!"
    echo $line >> results.txt
    curl var=$(curl https://gtfobins.github.io/gtfobins/ash/ 2>/dev/null | grep "<pre><code>" | sed 's+<pre><code>++g' | sed 's+</code></pre>++g') >> results.txt;
    echo $line + ' end' >> results.txt

fi
done

rm priv4.txt