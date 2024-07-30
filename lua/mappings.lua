require "nvchad.mappings"

-- add yours here
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua

local set = vim.keymap.set

set("n", ";", ":", { desc = "CMD enter command mode" })
set("i", "jk", "<ESC>")

set({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
set({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")

set("n", "<leader>fn", "<cmd>ObsidianSearch<CR>", { desc = "telescope Obsidian" })
