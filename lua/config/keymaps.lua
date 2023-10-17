-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-s>", ":w!<cr>", { desc = "Save File" })
-- Toggle Neotree and switch focus between Neotree and buffer

-- vim.api.nvim_set_keymap("n", "<C-o>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })
