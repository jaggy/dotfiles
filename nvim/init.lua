-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  -- vim.fn.setenv("PATH", vim.fn.system("echo $PATH"):gsub("\n", ""))
  vim.opt.linespace = 24
  vim.o.guifont = "BlexMono Nerd Font:h14"
  vim.g.neovide_frame = "none"
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0
end
