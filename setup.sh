#! /bin/sh

# Move to .Config

echo " "
echo "-- Crating symbolic links --"
echo " "

if [ -d "~/.config/bspwm"]
then

  rm -rf ~/.config/bspwm
  ln -s ~/.dotfiles/bspwm ~/.config

else

  ln -s ~/.dotfiles/bspwm ~/.config

fi

if [ -d "~/.config/sxhkd"]
then

  rm -rf ~/.config/sxhkd
  ln -s ~/.dotfiles/sxhkd ~/.config

else

  ln -s ~/.dotfiles/sxhkd ~/.config

fi

if [ -d "~/.config/polybar"]
then

  rm -rf ~/.config/polybar
  ln -s ~/.dotfiles/polybar ~/.config

else

  ln -s ~/.dotfiles/polybar ~/.config

fi

if [ -d "~/.config/kitty"]
then

  rm -rf ~/.config/kitty
  ln -s ~/.dotfiles/kitty ~/.config

else

  ln -s ~/.dotfiles/kitty ~/.config

fi

if [ -d "~/.config/nvim"]
then

  rm -rf ~/.config/nvim
  ln -s ~/.dotfiles/nvim ~/.config

else

  ln -s ~/.dotfiles/nvim ~/.config

fi

if [ -d "~/.config/dunst"]
then

  rm -rf ~/.config/dunst
  ln -s ~/.dotfiles/dunst ~/.config

else

  ln -s ~/.dotfiles/dunst ~/.config

fi

if [ -d "~/.config/rofi"]
then

  rm -rf ~/.config/rofi
  ln -s ~/.dotfiles/rofi ~/.config

else

  ln -s ~/.dotfiles/rofi ~/.config

fi

if [ -d "~/.config/picom"]
then

  rm -rf ~/.config/picom
  ln -s ~/.dotfiles/picom ~/.config

else

  ln -s ~/.dotfiles/picom ~/.config

fi

if [ -d "~/.config/eww"]
then

  rm -rf ~/.config/eww
  ln -s ~/.dotfiles/eww ~/.config

else

  ln -s ~/.dotfiles/eww ~/.config

fi

# Move to ${HOME}

if [ -d "~/src"]
then

  rm -rf ~/src
  ln -s ~/.dotfiles/src ~/

else

  ln -s ~/.dotfiles/src ~/

fi

# Fonts

echo " "
echo "-- Copy fonts to root fonts --"
echo " "

sudo cp -a ~/.dotfiles/fonts /usr/share/fonts

# Images
cp ~/.dotfiles/wallpapers/macd2.jpg ~/Pictures
cp ~/.dotfiles/wallpapers/wallpaper_switch_1.png ~/Pictures

# Zsh theme
cp ~/.dotfiles/zsh_theme/code.zsh-theme ~/.oh-my-zsh/themes

# Screenshots directory

if [ -d "~/Pictures/Screenshots"]
then

  rm -rf ~/Pictures/Screenshots
  mkdir "~/Pictures/Screenshots"

else

    mkdir "~/Pictures/Screenshots"

fi