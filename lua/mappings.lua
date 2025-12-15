require "nvchad.mappings"

-- add yours here
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua

local set = vim.keymap.set

set("n", ";", ":", { desc = "CMD enter command mode" })
set("i", "jk", "<ESC>")

set({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

set({ "n", "x", "o" }, "s", "<Plug>(leap)")

-- set("n", "<leader>q", "<cmd>lua require('dbee').toggle()<CR>", { desc = "telescope Obsidian" })

-- set("n", "<leader>fn", "<cmd>ObsidianSearch<CR>", { desc = "telescope Obsidian" })

-- set("i", "<leader><leader>", 'copilot#Accept("\\<CR>")', {
--   expr = true,
--   replace_keycodes = false,
-- })
-- set("i", "∆", "<Plug>(copilot-next)")
-- set("i", "˚", "<Plug>(copilot-previous)")

set("i", "<Right>", 'copilot#Accept("<CR>")', {
  expr = true,
  silent = true,
  noremap = true,
  replace_keycodes = false,
  desc = "Copilot Accept (Right Arrow)"
})

vim.g.copilot_no_tab_map = true
