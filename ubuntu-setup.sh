#!/bin/sh
set -e

# sudo apt update -y && sudo apt upgrade -y
# sudo apt purge -y snapd
# sudo apt update -y
# sudo apt install -y gnome-calculator gnome-characters gnome-logs gnome-system-monitor
# sudo apt purge ubuntu-web-launchers
# sudo apt autoremove -y
#sudo apt install -y git wget curl 
#sudo apt install -y software-properties-common
#sudo apt install -y ubuntu-restricted-extras
#sudo apt install -y gnome-shell-extensions
#sudo apt install -y chrome-gnome-shell

#sudo add-apt-repository universe
#sudo apt install -y gnome-tweak-tool

# Google Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Spotify
#curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
#echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Visual Studio Code
#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#sudo apt install -y apt-transport-https

# Battery save
#sudo add-apt-repository ppa:linrunner/tlp

# Flatpak
#sudo add-apt-repository ppa:alexlarsson/flatpak

# Brave browser
#curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -
#sudo sh -c 'echo "deb https://brave-browser-apt-release.s3.brave.com disco main" >> /etc/apt/sources.list.d/brave.list'

# Discord
#wget https://dl.discordapp.net/apps/linux/0.0.9/discord-0.0.9.deb
#sudo apt update -y
#sudo dpkg -i discord-0.0.9.deb
#sudo apt install -y -f
#sudo dpkg -l discord

#sudo apt install -y google-chrome-stable spotify-client code tlp tlp-rdw brave-browser flatpak gnome-software-plugin-flatpak
#sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#sudo systemctl enable tlp.service
#sudo systemctl start tlp.service

# neovim
wget "-P $HOME/ https://raw.githubusercontent.com/bogdanzsolt/config/master/.vimrc ~/.vimrc"
#ln -s 
