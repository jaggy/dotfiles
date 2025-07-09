return {
  {
    "folke/zen-mode.nvim",
    event = "VimEnter",
    opts = {
      window = {
        backdrop = 1,
        width = 120,
        height = 1,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
          laststatus = 0,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
        kitty = {
          enabled = false,
          font = "+4",
        },
      },
    },
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
    config = function(_, opts)
      require("zen-mode").setup(opts)
      
      local zen_enabled = false
      
      vim.api.nvim_create_autocmd({"BufEnter", "VimEnter"}, {
        callback = function()
          vim.defer_fn(function()
            if not zen_enabled and vim.bo.buftype == "" and vim.fn.expand("%") ~= "" then
              zen_enabled = true
              vim.cmd("ZenMode")
            end
          end, 50)
        end,
      })
    end,
  },
}
