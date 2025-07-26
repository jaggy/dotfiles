return {
  {
    "jesseleite/nvim-startled",
    lazy = false,
    priority = 1000,
    config = function()
      require('startled').setup({
        highlights = {
          StartledPrimary = 'String',
          StartledSecondary = 'Type',
          StartledMuted = 'Comment'
        },
        content = {
          {
            text = {
              "                                                     ",
              "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
              "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
              "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
              "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
              "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
              "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
              "                                                     ",
            },
            hl = 'StartledPrimary',
            center = true
          },
          { type = 'spacer' },
          {
            text = "Welcome to Neovim!",
            hl = 'StartledSecondary',
            center = true
          },
          { type = 'spacer' },
          {
            text = function()
              local stats = require("lazy").stats()
              return "⚡ Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins"
            end,
            hl = 'StartledMuted',
            center = true
          }
        }
      })
    end,
  },
}
