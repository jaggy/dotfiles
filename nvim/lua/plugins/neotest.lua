return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/nvim-nio",
    -- Add adapters for specific languages/frameworks
    "V13Axel/neotest-pest",
    "marilari88/neotest-vitest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-pest"),
        require("neotest-vitest"),
      },
      summary = {
        open = "botright vsplit | vertical resize 50",
      },
    })
  end,
  keys = {
    { "<leader>tt", function() require("neotest").run.run() end, desc = "Run test" },
    { "<leader>tT", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run file tests" },
    { "<leader>ta", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "Run all tests" },
    { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle summary" },
    { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show output" },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle output panel" },
    { "<leader>tS", function() require("neotest").run.stop() end, desc = "Stop test" },
  },
}