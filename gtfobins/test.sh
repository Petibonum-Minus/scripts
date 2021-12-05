#!/bin/bash

var=$(curl https://gtfobins.github.io/gtfobins/ash/ 2>/dev/null | grep "<pre><code>" | sed 's+<pre><code>++g' | sed 's+</code></pre>++g')
echo $var

if [ -z "$var" ]; then
   echo "VAR = 0"
else 
    echo "VAR est différent de 0"
fi

