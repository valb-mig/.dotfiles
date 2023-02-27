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
vim.o.expandtab = true
vim.o.shiftwidth =  2
vim.o.softtabstop = 2

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Numbers
vim.o.number = true

-- Colors
vim.o.termguicolors = true

-- Line 
vim.o.cursorline = true

-- Copy
vim.o.clipboard = unnamed

-- Theme_Load
require('onedark').load()

