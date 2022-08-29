#! /bin/sh

# Move to .Config
ln -s ~/.dotfiles/bspwm ~/.config
ln -s ~/.dotfiles/sxhkd ~/.config
ln -s ~/.dotfiles/polybar ~/.config
ln -s ~/.dotfiles/kitty ~/.config
ln -s ~/.dotfiles/nvim ~/.config
ln -s ~/.dotfiles/jgmenu ~/.config
ln -s ~/.dotfiles/dunst ~/.config
ln -s ~/.dotfiles/rofi ~/.config
# X

# Move to ${HOME}
ln -s ~/.dotfiles/src ~/
# X

# Fonts
#mv ~/.dotfiles/fonts/ /usr/share/fonts

# Images
cp ~/.dotfiles/wallpapers/macd2.jpg ~/Pictures
cp ~/.dotfiles/wallpapers/wallpaper_switch_1.png ~/Pictures
# X
