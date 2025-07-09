-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.list = false -- set nolist
vim.g.snacks_animate = false
vim.g.indent_blankline_enabled = false
vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.smoothscroll = false
vim.opt.wildignore:append({ "*/node_modules/*", "*/vendors/*", "*/.git/*" })
