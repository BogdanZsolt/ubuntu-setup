#!/bin/bash
# use: sudo chmod +x ubuntu-setup.sh and sudo ./ubuntu-setup.sh
# add canonical partner repo

sudo add-apt-repository "deb http://archive.canonical.com/ubuntu cosmic partner"
# update software list & upgrade 
sudo apt update && sudo apt upgrade -y
sudo apt install software-properties-common apt-transport-https wget
# download lists
# wget https://github.com/BogdanZsolt/ubuntu-setup/blob/master/ubuntu.packages
# wget https://github.com/BogdanZsolt/ubuntu-setup/blob/master/ubuntu.removes
# wget https://github.com/BogdanZsolt/ubuntu-setup/blob/master/gnome-shell-list.html
# add chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#setup tlp repo
sudo add-apt-repository ppa:linrunner/tlp
# setup stacer System Optimizer repo
# add-apt-repository ppa:oguzhaninan/stacer
# setup spotify repo
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
# echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# setup vscode repo
# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# setup sublime repo
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
# setup Yaru theme repo
sudo add-apt-repository ppa:communitheme/ppa
# update repo list
sudo apt update
#--------------------------------------------------
#install software
sudo apt -y install $(cat ubuntu.packages)
#SNAP install
sudo snap install slack --classic
sudo snap install gitkraken
sudo snap install mailspring
sudo snap install caprine
sudo snap install gravit-designer
sudo snap install krita
sudo snap install spotify
sudo snap install vscode --classic
sudo snap install sublime-text --classic

# install ocenaudio
wget http://www.ocenaudio.com/downloads/index.php/ocenaudio_debian64.deb -P ~/Downloads
sudo apt install -y ~/Downloads/ocenaudio_debian64.deb
# Remove Amazon Launcher
sudo apt -y purge ubuntu-web-launchers 
# Improve Ubuntu Battery 
sudo tlp start
sudo apt remove -y $(cat ubuntu.removes)
