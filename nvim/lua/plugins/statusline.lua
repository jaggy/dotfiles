return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.sections.lualine_b = {}
      opts.sections.lualine_c = {}

      opts.sections.lualine_x = { "filename" }
      opts.sections.lualine_y = {}
      opts.sections.lualine_z = {}
    end,
  },
}
