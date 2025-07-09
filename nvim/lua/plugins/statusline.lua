return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Remove git branch
      opts.sections.lualine_b = {}

      -- Clear entire right side
      opts.sections.lualine_x = { "filename" } -- LSP, command, etc.
      opts.sections.lualine_y = {} -- Filename as plain text
      opts.sections.lualine_z = {} -- Clear far right

      -- Remove filename from left side
      opts.sections.lualine_c = {}
    end,
  },
}

