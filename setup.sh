#!/bin/bash

echo "Installing i3"
apt-get install -y autoconf automake
apt-get update -y
apt-get install -y i3 i3-wm i3blocks i3lock i3status
apt-get install -y rxvt-unicode-256color

echo "Linking i3 Config"
mkdir -p ~/.i3
mkdir -p ~/.config/i3
ln -s `pwd`/i3/config ~/.config/i3/config
ln -s `pwd`/i3/i3blocks.conf ~/.i3/i3blocks.conf

echo "Linking fonts"
mkdir -p ~/.fonts
ln -s `pwd`/fonts ~/.fonts

echo "X Config"
ln -s `pwd`/X/Xresources ~/.Xresources
ln -s `pwd`/X/xinitrc ~/.xinitrc

echo "Bash Config"
ln -s `pwd`/bash/bashrc ~/.bashrc

echo "Atom packages"
apm install --packages-file `pwd`/atom/packages.list 
