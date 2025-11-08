return {
  "snacks.nvim",
  opts = {
    dim = {},
    indent = { enabled = false },
    dashboard = { enabled = false }, -- Disable Snacks dashboard
    explorer = {
      win = {
        position = "right",
      },
    },
    picker = {
      ignored = true,
      hidden = true,

      sources = {
        files = {
          hidden = true,
        },
      },
    },
  },
}
