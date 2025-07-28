return {
  "snacks.nvim",
  opts = {
    dim = {},
    indent = { enabled = false },
    dashboard = { enabled = false }, -- Disable Snacks dashboard
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
