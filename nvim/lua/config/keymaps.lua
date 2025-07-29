-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.keymap.set("i", "jk", "->", { desc = "Insert arrow" })
vim.keymap.set("i", "kl", "=>", { desc = "Insert fat arrow" })
vim.keymap.set("n", ";", ":", { desc = "Enter command mode" })

vim.keymap.set("n", "<leader>cp", function()
  local root = require("lazyvim.util").root.get()
  local file = vim.fn.expand("%:p")
  local relpath = vim.fn.fnamemodify(file, ":." .. root)
  vim.fn.setreg("+", relpath)
  vim.notify("Copied relative file path: " .. relpath)
end, { desc = "Copy relative file path to clipboard" })

vim.keymap.set("n", "<leader>tF", function()
  local current_file = vim.fn.expand("%:t")
  if not string.match(current_file, "%.php$") then
    vim.notify("Not a PHP file!", vim.log.levels.ERROR)
    return
  end

  local filename_without_ext = string.gsub(current_file, "%.php$", "")

  local function get_word_under_cursor()
    local word = vim.fn.expand("<cword>")
    local valid_methods = { "__invoke", "index", "show", "create", "store", "edit", "update", "destroy" }

    for _, method in ipairs(valid_methods) do
      if word == method then
        return string.upper(string.sub(word, 1, 1)) .. string.sub(word, 2)
      end
    end

    return ""
  end

  local default_name = get_word_under_cursor()

  vim.ui.input({ prompt = "Test name: ", default = default_name }, function(test_name)
    if not test_name or test_name == "" then
      return
    end

    if not string.match(test_name, "Test$") then
      test_name = test_name .. "Test"
    end

    local root = require("lazyvim.util").root.get()
    local test_dir = root .. "/tests/Feature/" .. filename_without_ext
    local test_file = test_dir .. "/" .. test_name .. ".php"

    vim.fn.mkdir(test_dir, "p")

    if vim.fn.filereadable(test_file) == 1 then
      vim.notify("Test file already exists: " .. test_file)
      vim.cmd("vsplit " .. test_file)
      return
    end

    local test_content = string.format([[<?php

namespace Tests\Feature\%s;

use App\Models\Workspace;
use Tests\Fixtures\ActingAs;

uses(ActingAs\Humans\]] .. (math.random() < 0.5 and "Jaggy" or "Jazel") .. [[::class);

it('has a valid factory', function () {
    factory($this->huamns);
});

function factory(Workspace $workspace, array $attributes = [])
{
    return test()->post(route(''), [
        ...$attributes,
    ]);
}
]], filename_without_ext)

    vim.fn.writefile(vim.split(test_content, "\n"), test_file)
    vim.cmd("vsplit " .. test_file)
    vim.notify("Created test file: " .. test_file)
  end)
end, { desc = "Create Feature Test" })

vim.keymap.set("n", "<leader>cN", function()
  local current_dir = vim.fn.expand("%:p:h")
  local root = require("lazyvim.util").root.get()
  local relative_dir = vim.fn.fnamemodify(current_dir, ":." .. root)
  local default_path = relative_dir .. "/"

  vim.ui.input({ prompt = "New file path: ", default = default_path }, function(filepath)
    if not filepath or filepath == "" then
      return
    end

    local full_path = root .. "/" .. filepath
    local dir = vim.fn.fnamemodify(full_path, ":h")

    -- Create directory if keyit doesn't exist
    vim.fn.mkdir(dir, "p")

    -- Open the new file
    vim.cmd("edit " .. full_path)
    vim.notify("Created new file: " .. full_path)
  end)
end, { desc = "Create new file relative to current buffer" })

vim.keymap.set("n", "<leader>uR", function()
  vim.cmd("source " .. vim.fn.stdpath("config") .. "/init.lua")
  vim.notify("Config reloaded!")
end, { desc = "Reload Neovim config" })
