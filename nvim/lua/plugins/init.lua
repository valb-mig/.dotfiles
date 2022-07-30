return require'packer'.startup(function()

-- Packer
use 'wbthomason/packer.nvim'

-- Auto_Pairs
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- Colorizer
use 'norcalli/nvim-colorizer.lua'

-- Telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Theme
use 'navarasu/onedark.nvim'

-- Tree
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

-- Lualine
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- Ident_line
use "lukas-reineke/indent-blankline.nvim"

-- Buffers
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

-- Lsp
use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

-- Auto complete
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'

-- Git Signs
use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release
}

end)

