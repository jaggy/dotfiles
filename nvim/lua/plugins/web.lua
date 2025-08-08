-- ~/.config/nvim/lua/plugins/web-dev.lua

return {
  -- PHP Language Server
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        phpactor = {
          filetypes = { "php" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("composer.json", ".git")(fname)
          end,
          init_options = {
            ["language_server_phpstan.enabled"] = false,
            ["language_server_psalm.enabled"] = false,
          },
        },
        intelephense = {
          filetypes = { "php" },
          settings = {
            intelephense = {
              files = {
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },

  -- Vue.js support
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          cmd = { "vue-language-server", "--stdio" },
          filetypes = { "vue" },
          init_options = {
            typescript = {
              tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib",
            },
          },
          settings = {
            vue = {
              server = {
                maxFileSize = 20971520, -- 20MB
                petiteVue = { processHtmlFile = false },
              },
            },
          },
          flags = {
            debounce_text_changes = 150,
          },
          timeout = 30000,
        },
      },
    },
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
        "vue",
        "typescript",
        "javascript",
        "html",
        "css",
        "scss",
        "json",
      },
    },
  },

  -- PHP Blade syntax highlighting
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },

  -- PHP folding configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.fold = { enable = true }
      return opts
    end,
  },

  -- Emmet support for HTML, CSS, Vue, and Blade
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "vue", "blade", "javascript", "typescript" },
    config = function()
      vim.g.user_emmet_leader_key = "<C-y>"
      vim.g.user_emmet_settings = {
        vue = {
          extends = "html",
        },
        blade = {
          extends = "html",
        },
        javascript = {
          extends = "jsx",
        },
        typescript = {
          extends = "tsx",
        },
      }

      -- Map Tab to expand Emmet in insert mode
      vim.keymap.set("i", "<Tab>", "<plug>(emmet-expand-abbr)", {
        buffer = true,
        silent = true,
      })
    end,
  },

  -- Vue.js specific plugins
  {
    "posva/vim-vue",
    ft = "vue",
  },

  -- PHP specific plugins
  {
    "StanAngeloff/php.vim",
    ft = "php",
  },

  -- Additional formatter support
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        fish = {},
        php = { "pint" },
        blade = { "blade-formatter" },
        vue = { "prettier" },
        typescript = { "prettier" },
        javascript = { "prettier" },
      },
    },
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        php = { "php", "phpcs" },
      },
      linters = {
        phpcs = {
          args = {
            "--standard=PSR12",
            "--report=json",
            "-q",
            "-",
          },
        },
      },
    },
  },
}
