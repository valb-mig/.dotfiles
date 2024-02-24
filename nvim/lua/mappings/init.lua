local keymap = vim.api.nvim_set_keymap

-- Text wrap
keymap('n', '<A-z>', ':set nowrap<CR>', {})
keymap('i', '<A-z>', '<ESC>:set nowrap<CR>', {})

keymap('n', '<A-a>', ':set wrap<CR>', {})
keymap('i', '<A-a>', '<ESC>:set wrap<CR>', {})

-- Save
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>a', {})

-- Tree
keymap('n', '<c-n>', ':NvimTreeToggle<CR>', {})
keymap('i', '<c-n>', '<ESC>:NvimTreeToggle<CR>a', {})

-- Undo
keymap('n', '<c-z>', ':undo<CR>', {})
keymap('i', '<c-z>', '<ESC>:undo<CR>a', {})

-- Redo
keymap('n', '<c-y>', ':redo<CR>', {})
keymap('i', '<c-y>', '<ESC>:redo<CR>a', {})

-- quit
keymap('n', '<c-w>', ':q<CR>', {})
keymap('i', '<c-w>', '<ESC>:q<CR>', {})

-- Colors
keymap('n', '<F7>', ':ColorizerToggle<CR>', {})

-- Format PHP
keymap('n', '<F8>', ':set ft=php.html<CR>', {})

-- Move
local opts = { noremap = true }
keymap('n', '<c-UP>',    '<c-w>j', opts)
keymap('n', '<c-LEFT>',  '<c-w>h', opts)
keymap('n', '<c-DOWN>',  '<c-w>k', opts)
keymap('n', '<c-RIGHT>', '<c-w>l', opts)

-- Telescope
keymap('n', '<c-f>', ':Telescope find_files<CR>', {})
keymap('n', '<c-f>', ':Telescope find_files<CR>', {})

-- Move buffer
keymap('n', '<TAB>', ':BufferNext<CR>', {})

keymap('n', '<A-w>', ':BufferClose<CR>', {})
keymap('n', '<A-,>', ':BufferNext<CR>', {})
keymap('n', '<A-.>', ':BufferPrevious<CR>', {})
