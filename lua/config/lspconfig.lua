local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({

  settings = {
    Lua = {
      diagnostics = {
        globals = { "love" },
        disable = { "lowercase-global" },
      },

      workspace = {
        library = {
          vim.fn.expand("${3rd}/love2d/library", true),
        },
      },
      format = {
        enable = true,
        defaultConfig = {
          indent_style = "space",
          indent_size = "4",
        },
      },
    },
  },
})
