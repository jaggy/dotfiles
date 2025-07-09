return {
  {
    "shortcuts/no-neck-pain.nvim",
    event = "VimEnter",
    opts = {
      width = 120,
      autocmds = {
        enableOnVimEnter = false,
      },
    },
    keys = {
      { "<leader>z", "<cmd>NoNeckPain<cr>", desc = "Toggle Centered Layout" },
    },
    config = function(_, opts)
      require("no-neck-pain").setup(opts)

      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          vim.defer_fn(function()
            vim.cmd("NoNeckPain")
          end, 500)
        end,
      })
    end,
  },
}
