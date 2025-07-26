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
            text = "Projects",
            hl = 'StartledSecondary',
            center = true
          },
          { type = 'spacer' },
          {
            text = "a - medley-api",
            hl = 'StartledMuted',
            center = true,
            keymap = {
              key = "a",
              action = function()
                vim.cmd("cd /Users/jaggy/Code/Medley/medley/apps/api")
                vim.cmd("Telescope find_files")
              end
            }
          },
          {
            text = "w - medley-web",
            hl = 'StartledMuted',
            center = true,
            keymap = {
              key = "w",
              action = function()
                vim.cmd("cd /Users/jaggy/Code/Medley/medley/apps/web")
                vim.cmd("Telescope find_files")
              end
            }
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
