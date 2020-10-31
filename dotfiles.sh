#!/bin/bash

if [ ! -d ~/dotfiles ];then
    echo "Creating folder dotfiles & Misc"
    mkdir ~/dotfiles/
    mkdir ~/dotfiles/Misc/

else
    echo "Clearing folder dotfiles & Misc"
    rm -rf ~/dotfiles/
    mkdir ~/dotfiles/
    mkdir ~/dotfiles/Misc/

fi

echo "Copying i3 config"
mkdir -p ~/dotfiles/.config/i3; cp ~/.config/i3/* ~/dotfiles/.config/i3

echo "Copying i3blocks config"
mkdir -p ~/dotfiles/.config/i3blocks; cp ~/.config/i3blocks/i3blocks.conf ~/dotfiles/.config/i3blocks/

echo "Copying dunst config"
mkdir -p ~/dotfiles/.config/dunst; cp ~/.config/dunst/* ~/dotfiles/.config/dunst/

echo "Copying compton config"
mkdir -p ~/dotfiles/.config/compton; cp ~/.config/compton/* ~/dotfiles/.config/compton/

echo "Copying zathura config"
mkdir -p ~/dotfiles/.config/zathura/; cp -r ~/.config/zathura/* ~/dotfiles/.config/zathura/

echo "Copying mutt config"
mkdir -p ~/dotfiles/.config/mutt/; cp -r ~/.config/mutt/* ~/dotfiles/.config/mutt/

echo "Copying home dots"
cp ~/.bashrc ~/.inputrc ~/.profile ~/.xinitrc ~/.offlineimaprc ~/.mailcap ~/.selected_editor ~/dotfiles/

echo "Copying system scripts"
cp -r ~/.scripts/ ~/dotfiles/

echo "Copying misc"
cp ~/.config/mimeapps.list ~/dotfiles/.config/; cp /etc/X11/xorg.conf ~/dotfiles/Misc; cp /etc/i3status.conf ~/dotfiles/Misc

echo "# place in Documents/keys/" > ~/dotfiles/mail
echo "set my_user=email@email.com" >> ~/dotfiles/mail
echo "set my_pass=password" >> ~/dotfiles/mail

