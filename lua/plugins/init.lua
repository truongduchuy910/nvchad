if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.8
end

return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
        "javascript",
        "typescript",
        "graphql",
        "markdown_inline",
        "nginx",
        "tsx",
        "yaml",
        "groovy",
      },
    },
  },

  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function(_, opts)
      local leap = require "leap"
      for k, v in pairs(opts) do
        leap.opts[k] = v
      end
    end,
  },
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require("dbee").install()
    end,
    config = function()
      require("dbee").setup(--[[optional config]])
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
  }
}
-- return {
--   {
--     "yetone/avante.nvim",
--     event = "VeryLazy",
--     lazy = false,
--     version = false, -- set this if you want to always pull the latest change
--     config = function()
--       require "configs.avante"
--     end,
--     opts = {
--       -- add any opts here
--     },
--     -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
--     build = "make",
--     -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
--     dependencies = {
--       "nvim-treesitter/nvim-treesitter",
--       "stevearc/dressing.nvim",
--       "nvim-lua/plenary.nvim",
--       "MunifTanjim/nui.nvim",
--       --- The below dependencies are optional,
--       "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
--       -- "zbirenbaum/copilot.lua", -- for providers='copilot'
--       {
--         "zbirenbaum/copilot.lua",
--         cmd = "Copilot",
--         event = "InsertEnter",
--         config = function()
--           require "configs.copilot"
--         end,
--       },
--       {
--         -- support for image pasting
--         "HakonHarnes/img-clip.nvim",
--         event = "VeryLazy",
--         opts = {
--           -- recommended settings
--           default = {
--             embed_image_as_base64 = false,
--             prompt_for_file_name = false,
--             drag_and_drop = {
--               insert_mode = true,
--             },
--             -- required for Windows users
--             use_absolute_path = true,
--           },
--         },
--       },
--       {
--         -- Make sure to set this up properly if you have lazy=true
--         "MeanderingProgrammer/render-markdown.nvim",
--         opts = {
--           file_types = { "markdown", "Avante" },
--         },
--         ft = { "markdown", "Avante" },
--       },
--     },
--   },
--
--
--   {
--     "lewis6991/gitsigns.nvim",
--     config = function()
--       require "configs.gitsigns"
--     end,
--   },
--
--   {
--     "stevearc/conform.nvim",
--     -- event = 'BufWritePre', -- uncomment for format on save
--     opts = require "configs.conform",
--   },
--
--   -- These are some examples, uncomment them if you want to see them work!
--   {
--     "neovim/nvim-lspconfig",
--     config = function()
--       require "configs.lspconfig"
--     end,
--   },
--
--   -- {
--   -- 	"nvim-treesitter/nvim-treesitter",
--   -- 	opts = {
--   -- 		ensure_installed = {
--   -- 			"vim", "lua", "vimdoc",
--   --      "html", "css"
--   -- 		},
--   -- 	},
--   -- },
--   --   event = "BufWritePre",
--   --   config = function()
--   --     require "configs.conform"
--   --   end,
--   -- },
--   -- {
--   --   "neovim/nvim-lspconfig",
--   --   config = function()
--   --     require("nvchad.configs.lspconfig").defaults()
--   --     require "configs.lspconfig"
--   --   end,
--   -- },
--   {
--     "williamboman/mason.nvim",
--     opts = {},
--   },
--
-- }
