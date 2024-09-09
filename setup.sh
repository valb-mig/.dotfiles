#!/bin/bash

echo -e "\n-- This Script is for recently formatted computers --\n"
echo -e "\n-- (If you've already configured your machine, don't run it) --\n"

read -p "So, do you want to run it? (Y/N): " opt

if [ "$opt" != "Y" ] && [ "$opt" != "y" ]; then
  echo "Ok, goodbye."
  exit 1
fi

# Function to create symbolic links
create_symlink() {
  local target="$1"
  local link_name="$2"

  if [ -d "$link_name" ]; then
    rm -rf "$link_name"
  fi
  ln -s "$target" "$link_name"
  echo "-- Created symlink for $link_name --"
}

# Move to .config
echo -e "\n-- Creating symbolic links --\n"
echo -e "\n-- (ignore the messages) --\n"

# List of dotfiles directories
configs=(
  bspwm
  sxhkd
  kitty
  nvim
  dunst
  rofi
  picom
  eww
)

for config in "${configs[@]}"; do
  create_symlink "$HOME/.dotfiles/$config" "$HOME/.config/$config"
done

# Local bin
create_symlink "$HOME/.dotfiles/bin" "$HOME/.local/bin"

# Move to ${HOME}
create_symlink "$HOME/.dotfiles/src" "$HOME/src"

# Fonts
echo -e "\n-- Copying fonts to system fonts --\n"
sudo cp -a "$HOME/.dotfiles/fonts" /usr/share/fonts

# Images
echo -e "\n-- Copying wallpapers --\n"
cp "$HOME/.dotfiles/wallpapers/macd2.jpg" "$HOME/Pictures"
cp "$HOME/.dotfiles/wallpapers/wallpaper_switch_1.png" "$HOME/Pictures"

# Zsh theme
echo -e "\n-- Copying Zsh theme --\n"
rm -rf "$HOME/.oh-my-zsh/themes/code.zsh-theme"
cp "$HOME/.dotfiles/zsh_theme/code.zsh-theme" "$HOME/.oh-my-zsh/themes"

# Screenshots directory
screenshots_dir="$HOME/Pictures/Screenshots"
if [ -d "$screenshots_dir" ]; then
  rm -rf "$screenshots_dir"
fi
mkdir -p "$screenshots_dir"

echo -e "\nEnd of the script :D\n"
