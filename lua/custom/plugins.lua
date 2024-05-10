local plugins = {
  {
    "akinsho/git-conflict.nvim",
    config = true,
    lazy = false
  },
  {
    "moll/vim-bbye",
    lazy = false
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,
    ft = "python",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "tpope/vim-fugitive",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",
        "clang-format",
        "clangd",
        "eslint_d",
        -- Sometimes lua-language-server isn't automatically even though lua/plugins/configs/mason.lua already ensured its installation.
        "lua-language-server"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    branch = "v0.5.8",
    event = "User AstroFile",
  }
}
return plugins
