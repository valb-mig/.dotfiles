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
ln -s ~/.dotfiles/.spicetify ~/
# X

# Fonts
#mv ~/.dotfiles/fonts/ /usr/share/fonts

# Images
mv ~/.dotfiles/wallpaper ~/Pictures
# X


