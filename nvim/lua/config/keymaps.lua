-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.keymap.set("i", "jk", "->", { desc = "Insert arrow" })
vim.keymap.set("i", "kl", "=>", { desc = "Insert fat arrow" })

vim.keymap.set("n", "<leader>cp", function()
  local root = require("lazyvim.util").root.get()
  local file = vim.fn.expand("%:p")
  local relpath = vim.fn.fnamemodify(file, ":." .. root)
  vim.fn.setreg("+", relpath)
  vim.notify("Copied relative file path: " .. relpath)
end, { desc = "Copy relative file path to clipboard" })
