local opts = {noremap=true, silent=true}

local term_opts = {silent=true}

-- shorten funtion name
local keymap = vim.api.nvim_set_keymap

-- remap space as the leader key
--keymap("", " ", "<Nop>", opts)
--vim.g.mapleader = " "
--vim.g.maplocalleader = " "

-- INSERT MODE
keymap("i", "jk", "<ESC>", opts)    -- changes from insert mode to normal mode

-- NORMAL MODE
--
keymap("n", "<Space>e", ":NvimTreeToggle<cr>", opts) -- this can be replaced with the nvim-tree
--keymap("n", "C-c", ":nohl<CR>", opts) -- clears the search highlight
--keymap("n", "x", "_x", opts) -- ensured that the deleted character doesn't copy to the register 
-- editing in normal mode
keymap("n", "<Space>+", "<C-a>", opts) -- increments numbers in normal mode 
keymap("n", "<Space>-", "<C-x>", opts) -- decrements numbers in normal mode 
-- manage split windows
keymap("n", "<Space>sv", "<C-w>v", opts) -- split window vertically 
keymap("n", "<Space>sh", "<C-w>s", opts) -- split window horizontally 
keymap("n", "<Space>se", "<C-w>=", opts) -- make split windows of equal width 
keymap("n", "<Space>sx", ":close<CR>", opts) -- close current window 
-- manage tabs
keymap("n", "<Space>to", ":tabnew<CR>", opts) -- open new tab
keymap("n", "<Space>tx", ":tabclose<CR>", opts) -- close tab
keymap("n", "<Space>tn", ":tabn<CR>", opts) -- next tab
keymap("n", "<Space>tp", ":tabp<CR>", opts) -- previous tab

-- for vim-plugin: vim-maximizer
keymap("n", "<Space>sm", ":MaximizerToggle<CR>", opts) -- for resizing the current and the split window
