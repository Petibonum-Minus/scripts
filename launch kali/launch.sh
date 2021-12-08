#!/bin/bash

#sudo apt-get update && sudo apt-get full-upgrade -y
#sudo apt-get install -y git-all git-clone

sudo cp ~/.zshrc ~/.zshrc.backup

echo "# others aliases" >> ~/.zshrc
echo "alias install='sudo apt-get install -y'" >> ~/.zshrc
echo "alias update='sudo apt-get update && sudo apt-get full-upgrade -y'" >> ~/.zshrc
echo "alias purge='sudo apt-get purge -y'" >> ~/.zshrc
echo "alias fix='sudo apt-get --fix-broken install -y'" >> ~/.zshrc
#source ~/.zshrc

mkdir ~/Tools
mkdir ~/Pentest

# Install Tools
cd Tools && git clone https://github.com/Iole-Bri/scripts.git && git clone https://github.com/volatilityfoundation/volatility3.git && cd volatility3 && sudo python3 setup.py install && cd
cd Documents && git clone https://github.com/Spit22/GOTHAM.git && cd

