local opts = {noremap=true, silent=true}

local term_opts = {silent=true}

-- shorten funtion name
local keymap = vim.api.nvim_set_keymap

-- remap space as the leader key
keymap("", " ", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- INSERT MODE
keymap("i", "jk", "<ESC>", opts)    -- changes from insert mode to normal mode

-- NORMAL MODE
--
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts) -- this can be replaced with the nvim-tree
--keymap("n", "C-c", ":nohl<CR>", opts) -- clears the search highlight
--keymap("n", "x", "_x", opts) -- ensured that the deleted character doesn't copy to the register 
-- editing in normal mode
keymap("n", "<Leader>+", "<C-a>", opts) -- increments numbers in normal mode 
keymap("n", "<Leader>-", "<C-x>", opts) -- decrements numbers in normal mode 
-- manage split windows
keymap("n", "<Leader>sv", "<C-w>v", opts) -- split window vertically 
keymap("n", "<Leader>sh", "<C-w>s", opts) -- split window horizontally 
keymap("n", "<Leader>se", "<C-w>=", opts) -- make split windows of equal width 
keymap("n", "<Leader>sx", ":close<CR>", opts) -- close current window 
-- manage tabs
keymap("n", "<Leader>to", ":tabnew<CR>", opts) -- open new tab
keymap("n", "<Leader>tx", ":tabclose<CR>", opts) -- close tab
keymap("n", "<Leader>tn", ":tabn<CR>", opts) -- next tab
keymap("n", "<Leader>tp", ":tabp<CR>", opts) -- previous tab

-- for vim-plugin: vim-maximizer
keymap("n", "<Leader>sm", ":MaximizerToggle<CR>", opts) -- for resizing the current and the split window
