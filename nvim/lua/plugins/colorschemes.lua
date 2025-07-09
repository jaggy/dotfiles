return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    config = function()
      require("github-theme").setup({
        options = {
          styles = {
            comments = "italic",
            types = "italic,bold",
          },
        },
        groups = {
          all = {
            WinSeparator = { bg = "NONE", fg = "#ffffff" },
          },
        },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_light_default",
    },
  },
}
