#!/bin/bash

# Color Zone
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

# ASCII ART
cat <<EOF
   / \  / ___| / ___|_ _|_ _|    / \   _ __| |_     / \   _ __ ___| |__ (_)_   _____ 
  / _ \ \___ \| |    | | | |    / _ \ | '__| __|   / _ \ | '__/ __| '_ \| \ \ / / _ \
 / ___ \ ___) | |___ | | | |   / ___ \| |  | |_   / ___ \| | | (__| | | | |\ V /  __/
/_/   \_\____/ \____|___|___| /_/   \_\_|   \__| /_/   \_\_|  \___|_| |_|_| \_/ \___|
EOF

# Code Zone
echo -e "${GREEN}
\nVolatility is use to analyze memory dump.
Please use to volatility -h to see all function.
${ENDCOLOR}"
echo -e "${GREEN}And this is some green text${ENDCOLOR}"
bash --rcfile <(echo '. ~/.bashrc; ip -br a')