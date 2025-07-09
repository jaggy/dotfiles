return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
          styles = {
            sidebars = "transparent",
            floats = "transparent",
            comments = "italic",
            types = "italic,bold",
          },
        },
        groups = {
          github_light_default = {
            WinSeparator = { bg = "NONE", fg = "#ffffff" },
            Folded = { bg = "NONE", fg = "#d0d7de" },
            FoldColumn = { fg = "#d0d7de" },
          },
          github_dark_high_contrast = {
            WinSeparator = { bg = "NONE", fg = "#0A0C10" },
            Folded = { bg = "NONE", fg = "#d0d7de" },
            FoldColumn = { fg = "#080808" },
            Normal = { bg = "#0A0C10" },
            NormalFloat = { bg = "#0A0C10" },
            SignColumn = { bg = "#0A0C10" },
            LineNr = { bg = "#0A0C10" },
            CursorLineNr = { bg = "#0A0C10" },
            GitSignsAdd = { bg = "#0A0C10" },
            GitSignsChange = { bg = "#0A0C10" },
            GitSignsDelete = { bg = "#0A0C10" },
          },
        },
      })
    end,
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false,
        terminal = true,
        overrides = {},
      })
    end,
  },
  {
    "f-person/auto-dark-mode.nvim",
    config = function()
      require("auto-dark-mode").setup({
        update_interval = 1000,
        set_dark_mode = function()
          vim.api.nvim_set_option_value("background", "dark", {})
          vim.cmd.colorscheme("github_dark_high_contrast")
        end,
        set_light_mode = function()
          vim.api.nvim_set_option_value("background", "light", {})
          vim.cmd.colorscheme("github_light_default")
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_light_default",
    },
  },
}
