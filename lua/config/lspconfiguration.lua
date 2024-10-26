local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
