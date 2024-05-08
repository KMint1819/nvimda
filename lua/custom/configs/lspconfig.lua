local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities


-- This is actually importing another module called nvim-lspconfig. See
-- https://github.com/neovim/nvim-lspconfig
local lsp = require("lspconfig")

lsp.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
})
lsp.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lsp.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
