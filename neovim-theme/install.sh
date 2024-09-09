#! bin/bash

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim

rm -rf ~/.local/share/nvim/site/pack/packer/start/onedark.nvim/lua/onedark/palette.lua

ln -s ~/.dotfiles/neovim_theme_local/palette.lua ~/.local/share/nvim/site/pack/packer/start/onedark.nvim/lua/onedark
