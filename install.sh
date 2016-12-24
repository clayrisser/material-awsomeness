#!/bin/bash

# install flat-plat
wget -P /tmp/ https://github.com/nana-4/Flat-Plat/releases/download/v3.18.20161109/Flat-Plat-3.18.20161109.tar.gz
tar -vxzf /tmp/Flat-Plat*.tar.gz -C /usr/share/themes/
cd /usr/share/themes/Flat-Plat || cd ~/.themes/Flat-Plat
(echo y) | sudo cp -div gnome-shell/gnome-shell-theme.gresource /usr/share/gnome-shell

# install paper
(echo) | add-apt-repository ppa:snwh/pulp
apt-get update
apt-get install -y paper-icon-theme
apt-get install -y paper-cursor-theme
