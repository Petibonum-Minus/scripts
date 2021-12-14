#!/bin/bash

# Update & Upgrade
sudo apt-get update && sudo apt-get full-upgrade -y
sudo apt-get install -y git-all tmux
cd && sudo cp .zshrc .zshrc.backup
cd && sudo cp Tools/scripts/tmux/tmux_conf /etc/tmux.conf

# Aliases
cd && echo " " >> .zshrc
cd && echo "# others aliases" >> .zshrc
cd && echo "alias install='sudo apt-get install -y'" >> .zshrc
cd && echo "alias update='sudo apt-get update && sudo apt-get full-upgrade -y'" >> .zshrc
cd && echo "alias purge='sudo apt-get purge -y'" >> .zshrc
cd && echo "alias fix='sudo apt-get --fix-broken install -y'" >> .zshrc
cd && echo "alias clean_remove='sudo apt-get autoremove -y && sudo apt-get autoclean -y'" >> .zshrc

# Directory
mkdir ~/Tools
mkdir ~/Pentest
mkdir ~/Pentest/THM/
mkdir ~/Pentest/HTB/
mkdir ~/VPN

# Install Tools
cd Tools && git clone https://github.com/Iole-Bri/scripts.git && cd
cd Documents && git clone https://github.com/Spit22/GOTHAM.git && git clone https://github.com/Iole-Bri/Petibonum_docs.git && cd
cd Tools && wget http://downloads.volatilityfoundation.org/releases/2.6/volatility_2.6_lin64_standalone.zip && unzip volatility_2.6_lin64_standalone.zip && rm volatility_2.6_lin64_standalone.zip && mv volatility_2.6_lin64_standalone volatility && cd volatility && sudo ln -s /home/kali/Tools/volatility/volatility_2.6_lin64_standalone /usr/bin/volatility && cd

# Install Links
sudo ln -s /home/kali/Tools/scripts/tmux/tmux_1.sh /usr/bin/pentestip
sudo ln -s /home/kali/Tools/scripts/tmux/tmux_2.sh /usr/bin/pentest
sudo ln -s /home/kali/Tools/volatility3/vol.py /usr/bin/volatility
