require "nvchad.mappings"

-- add yours here

local set = vim.keymap.set

set("n", ";", ":", { desc = "CMD enter command mode" })
set("i", "jk", "<ESC>")

set({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

set({ "n", "x", "o" }, "n", "<Plug>(leap-forward)")
set({ "n", "x", "o" }, "N", "<Plug>(leap-backward)")
set({ "n", "x", "o" }, "gn", "<Plug>(leap-from-window)")
