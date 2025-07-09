-- ~/.config/nvim/lua/plugins/web-dev.lua

return {
  -- PHP Language Server
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        phpactor = {
          cmd = { "phpactor", "language-server" },
          filetypes = { "php" },
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

  -- PHP folding configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.fold = { enable = true }
      return opts
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
            "--standard=PSR2",
            "--report=json",
            "-q",
            "-",
          },
        },
      },
    },
  },
}
