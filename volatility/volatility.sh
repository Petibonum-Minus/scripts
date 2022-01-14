#!/bin/bash

# Color Zone
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

# ASCII ART
cat <<EOF
 ____   ____    .__          __  .__.__  .__  __           __________         __________        __  ._____.                                
\   \ /   /___ |  | _____ _/  |_|__|  | |__|/  |_ ___.__. \______   \___.__. \______   \ _____/  |_|__\_ |__   ____   ____  __ __  _____  
 \   Y   /  _ \|  | \__  \\   __\  |  | |  \   __<   |  |  |    |  _<   |  |  |     ___// __ \   __\  || __ \ /  _ \ /    \|  |  \/     \ 
  \     (  <_> )  |__/ __ \|  | |  |  |_|  ||  |  \___  |  |    |   \\___  |  |    |   \  ___/|  | |  || \_\ (  <_> )   |  \  |  /  Y Y  \
   \___/ \____/|____(____  /__| |__|____/__||__|  / ____|  |______  // ____|  |____|    \___  >__| |__||___  /\____/|___|  /____/|__|_|  /
                         \/                       \/              \/ \/                     \/             \/            \/            \/ 
EOF

# Code Zone
echo -e "${GREEN}
\nVolatility is use to analyze memory dump.
Please use to volatility -h to see all function.
${ENDCOLOR}"
echo -e "${GREEN}And this is some green text${ENDCOLOR}"
bash --rcfile <(echo '. ~/.bashrc; ip -br a')