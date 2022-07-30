-- Geral
require('mappings')
require('plugins')

-- Configs
require('tree-config')
require('line-config')
require('indent-config')
require('buffer-config')
require('cmp-config')
require('git-config')

-- Theme
require('theme')

-- LSP
require'lspconfig'.pyright.setup{}

-- Tab
vim.bo.expandtab = true
vim.bo.shiftwidth =  2
vim.bo.softtabstop = 2

-- Numbers
vim.o.number = true

-- Colors
vim.o.termguicolors = true

-- Line 
vim.o.cursorline = true

-- Theme_Load
require('onedark').load()

