#! bin/bash

# Uncoment if you don't have packer installed
#
# git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Remove if theme folder exist

rm -rf ~/.local/share/nvim/site/pack/packer/start/onedark.nvim/lua/onedark/palette.lua

# Create a link folder for the theme

ln -s ~/.dotfiles/neovim_theme_local/palette.lua ~/.local/share/nvim/site/pack/packer/start/onedark.nvim/lua/onedark

