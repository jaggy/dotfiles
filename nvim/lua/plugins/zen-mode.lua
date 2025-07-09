return {
  {
    "shortcuts/no-neck-pain.nvim",
    event = "VimEnter",
    opts = {
      width = 140,
      autocmds = {
        enableOnVimEnter = false,
      },
      buffers = {
        colors = {
          background = "NONE",
        },
        wo = {
          fillchars = "eob: ",
          winbar = "",
        },
      },
    },
    keys = {
      { "<leader>z", "<cmd>NoNeckPain<cr>", desc = "Toggle Centered Layout" },
    },
    config = function(_, opts)
      require("no-neck-pain").setup(opts)

      local nnp_enabled = false

      vim.api.nvim_create_autocmd({ "VimEnter", "BufEnter" }, {
        callback = function()
          vim.defer_fn(function()
            if not nnp_enabled and vim.bo.buftype == "" and vim.fn.expand("%") ~= "" then
              nnp_enabled = true
              vim.cmd("NoNeckPain")
            end
          end, 100)
        end,
      })
    end,
  },
}
