return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
  },
  {
    "L3MON4D3/LuaSnip",
  },
  {
    "CRAG666/code_runner.nvim",
    config = true,
  },

  { "datsfilipe/vesper.nvim" },
  { "rebelot/kanagawa.nvim" },
}
