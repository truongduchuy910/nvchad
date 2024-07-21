require "nvchad.mappings"

-- add yours here

local set = vim.keymap.set

set("n", ";", ":", { desc = "CMD enter command mode" })
set("i", "jk", "<ESC>")

set({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
