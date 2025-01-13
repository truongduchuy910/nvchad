-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }


-- -- load defaults i.e lua_lsp
-- require("nvchad.configs.lspconfig").defaults()
--
-- local lspconfig = require "lspconfig"
--
-- -- EXAMPLE
-- local servers = { "html", "cssls" }
-- local nvlsp = require "nvchad.configs.lspconfig"
--
-- -- EXAMPLE
-- local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init
-- local capabilities = require("nvchad.configs.lspconfig").capabilities
--
-- -- add tsserver, graphql, rust_analyzer, pyright, markdown_oxide, nginx_language_server to local servers.
--
-- table.insert(servers, "tsserver")
-- table.insert(servers, "graphql")
-- table.insert(servers, "rust_analyzer")
-- table.insert(servers, "pyright")
--
-- -- local lspconfig = require "lspconfig"
-- -- local servers = {
-- --   "docker_compose_language_service",
-- --   "dockerls",
-- --   "lua_ls",
-- --   "tsserver",
-- --   "denols",
-- --
-- --   "nginx_language_server",
-- --   "pyright",
-- --   "rust_analyzer",
-- --   "markdown_oxide",
-- --   "graphql",
-- -- }
--
-- -- local lspconfig = require "lspconfig"
-- -- local servers = {
-- --   "docker_compose_language_service",
-- --   "dockerls",
-- --   "lua_ls",
-- --   "tsserver",
-- --   -- "denols",
-- --
-- --   -- "nginx_language_server",
-- --   "markdown_oxide",
-- --   "graphql",
-- -- }
--
-- -- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end
--
-- -- configuring single server, example: typescript
-- -- lspconfig.ts_ls.setup {
-- --   on_attach = nvlsp.on_attach,
-- --   on_init = nvlsp.on_init,
-- --   capabilities = nvlsp.capabilities,
-- -- }
--
-- -- denols
-- lspconfig.denols.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
-- }
--
-- -- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   root_dir = lspconfig.util.root_pattern "package.json",
--   single_file_support = false,
-- }
--
-- -- gitlab ci
-- lspconfig.gitlab_ci_ls.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   root_dir = lspconfig.util.root_pattern ".gitlab*",
-- }
