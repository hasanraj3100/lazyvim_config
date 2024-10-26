-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "Y", "y$", { desc = "Yank to the end of the line" })

-- for competitest
vim.keymap.set("n", "<leader>r", ":CompetiTest run<CR>", { desc = "Run testcases" })
vim.keymap.set("n", "<leader>t", ":CompetiTest receive problem<CR>", { desc = "Receive a problem" })
vim.keymap.set("n", "<leader><CR>", ":CompetiTest add_testcase<CR>", { desc = "Add a new testcase" })
