return {
  {
    "neovim/nvim-lspconfig",
  },
  {
    "L3MON4D3/LuaSnip",
  },

  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "dragon",
    },
  },

  {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "kanagawa-dragon",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },

  { "akinsho/bufferline.nvim", enabled = false },

  -- Disable snacks dashboard
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
    },
  },

  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup()
    end,
  },

  {
    "seblyng/roslyn.nvim",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
  },
}
