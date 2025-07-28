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
            WinSeparator = { bg = "NONE", fg = "#000000" },
            Folded = { bg = "NONE", fg = "#d0d7de" },
            FoldColumn = { fg = "#080808" },
            Normal = { bg = "#000000" },
            NormalFloat = { bg = "#000000" },
            SignColumn = { bg = "#000000" },
            LineNr = { bg = "#000000" },
            CursorLineNr = { bg = "#000000" },
            GitSignsAdd = { bg = "#000000" },
            GitSignsChange = { bg = "#000000" },
            GitSignsDelete = { bg = "#000000" },
          },
        },
      })
    end,
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = false,
        terminal_colors = true,
        devicons = true,
        styles = {
          comment = { italic = true },
          keyword = { italic = true },
          type = { italic = true },
          storageclass = { italic = true },
          structure = { italic = true },
          parameter = { italic = true },
          annotation = { italic = true },
          tag_attribute = { italic = true },
        },
        filter = "pro",
        inc_search = "background",
        background_clear = {},
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_highlight = "default",
            context_start_underline = false,
          },
        },
        overridePalette = function(filter)
          return {
            dark2 = "#000000",
            dark1 = "#000000",
            background = "#000000",
          }
        end,
        override = function(c)
          return {
            WinSeparator = { bg = "NONE", fg = "#000000" },
            Folded = { bg = "NONE", fg = "#d0d7de" },
            FoldColumn = { fg = "#080808" },
            Normal = { bg = "#000000" },
            NormalFloat = { bg = "#000000" },
            SignColumn = { bg = "#000000" },
            LineNr = { bg = "#000000" },
            CursorLineNr = { bg = "#000000" },
            GitSignsAdd = { bg = "#000000" },
            GitSignsChange = { bg = "#000000" },
            GitSignsDelete = { bg = "#000000" },
          }
        end,
      })
    end,
  },
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
          vim.cmd.colorscheme("monokai-pro")
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
