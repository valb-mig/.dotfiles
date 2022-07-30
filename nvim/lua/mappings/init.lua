-- Keybinds '<c-s> = :w'
-- Keybinds setup ('MODE', 'KEYS', 'COMMAND', {OPTIONS})

local keymap = vim.api.nvim_set_keymap

-- Telescope
keymap('n', '<c-y>', ':Telescope find_files<CR>', {})
keymap('i', '<c-y>', '<ESC>:Telescope find_files<CR>', {})

-- Save
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>a', {})

-- Tree
keymap('n', '<c-n>', ':NvimTreeToggle<CR>', {})
keymap('i', '<c-n>', '<ESC>:NvimTreeToggle<CR>a', {})

-- Undo
keymap('n', '<c-z>', ':undo<CR>', {})
keymap('i', '<c-z>', '<ESC>:undo<CR>a', {})

-- quit
keymap('n', '<c-w>', ':q<CR>', {})
keymap('i', '<c-w>', '<ESC>:q<CR>', {})

-- Colors
keymap('n', '<F7>', ':ColorizerToggle<CR>', {})

-- Move
local opts = { noremap = true }
keymap('n', '<c-UP>', '<c-w>j', opts)
keymap('n', '<c-LEFT>', '<c-w>h', opts)
keymap('n', '<c-DOWN>', '<c-w>k', opts)
keymap('n', '<c-RIGHT>', '<c-w>l', opts)

-- Move buffer
keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', {})
--keymap('n', '<c-w>', ':BufferLinePickClose<CR>', {})
