-- Set leader and localleader
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Shorten keymap definition
local keymap = vim.keymap

-- Set shortcut to unhighlight search
keymap.set("n", "<leader><space>", "<Cmd>nohlsearch<CR>", { noremap = true, silent = true })

-- Reload configuration without restarting neovim
keymap.set("n", "<leader>r", "<Cmd>source %<CR>", {})

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- Make splits equal size
keymap.set("n", "<leader>sx", "<C-w>x", { desc = "Close current split" }) -- Close current split

-- Tab management
keymap.set("n", "<leader>to", "<Cmd>tabnew<CR>", { desc = "Open new tab" }) -- Open new tab
keymap.set("n", "<leader>tx", "<Cmd>tabclose<CR>", { desc = "Close current tab" }) -- Close current tab
keymap.set("n", "<leader>tn", "<Cmd>tabn<CR>", { desc = "Go to next tab" }) -- Go to next tab
keymap.set("n", "<leader>tp", "<Cmd>tabp<CR>", { desc = "Go to previous tab" }) -- Go to previous tab
keymap.set("n", "<leader>tf", "<Cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- Open current buffer in new tab
