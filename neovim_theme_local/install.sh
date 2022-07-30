#! bin/bash

rm -rf ~/.local/share/nvim/site/pack/packer/start/onedark.nvim/lua/onedark/palette.lua

ln -s ~/.dotfiles/neovim_theme_local/palette.lua ~/.local/share/nvim/site/pack/packer/start/onedark.nvim/lua/onedark

# If exist a file just delete the palette.lua on the path

