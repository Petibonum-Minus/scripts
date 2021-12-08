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
cd && source .zshrc

# Directory
mkdir ~/Tools
mkdir ~/Pentest
mkdir ~/Pentest/THM/
mkdir ~/Pentest/HTB/
mkdir ~/VPN

# Install Tools
cd Tools && git clone https://github.com/Iole-Bri/scripts.git && git clone https://github.com/volatilityfoundation/volatility3.git && cd volatility3 && sudo python3 setup.py install && cd
cd Documents && git clone https://github.com/Spit22/GOTHAM.git && https://github.com/Iole-Bri/Petibonum_docs.git && cd

# Install Links
sudo ln -s ~/Tools/scripts/tmux/tmux.sh /usr/bin/Pentest
