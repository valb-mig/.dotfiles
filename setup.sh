#! /bin/sh

# Move to .Config
ln -s ~/.dotfiles/bspwm ~/.config
ln -s ~/.dotfiles/sxhkd ~/.config
ln -s ~/.dotfiles/polybar ~/.config
ln -s ~/.dotfiles/kitty ~/.config
ln -s ~/.dotfiles/nvim ~/.config
ln -s ~/.dotfiles/dunst ~/.config
ln -s ~/.dotfiles/rofi ~/.config
ln -s ~/.dotfiles/picom ~/.config

# Move to ${HOME}
ln -s ~/.dotfiles/src ~/

# Fonts

#mv ~/.dotfiles/fonts/ /usr/share/fonts

# Images
cp ~/.dotfiles/wallpapers/macd2.jpg ~/Pictures
cp ~/.dotfiles/wallpapers/wallpaper_switch_1.png ~/Pictures

# Screenshots directory

echo "\n Creating Screenshots Directory :) \n"

if [ -d  "Pictures/Screenshots/" ]
then
  echo "Directory 'Pictures/Screenshots' Exixts :/"
else
  mkdir "Pictures/Screenshots"
fi

