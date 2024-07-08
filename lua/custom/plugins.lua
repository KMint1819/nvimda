local plugins = {
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require 'nvim-ts-autotag'.setup()
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    config = true,
    opts = function()
      require 'git-conflict'.setup {
        default_mappings = false
      }
      vim.keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
      vim.keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
      vim.keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
      vim.keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
      vim.keymap.set('n', '[x', '<Plug>(git-conflict-prev-conflict)')
      vim.keymap.set('n', ']x', '<Plug>(git-conflict-next-conflict)')
    end,
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

      local bufopts = { noremap = true, silent = true }
      vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)
      vim.diagnostic.config({
        virtual_text = false,
      })
    end,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    tag = "v0.5.8",
    event = "User AstroFile",
    init = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_mouse_mappings = 1
      vim.g.VM_maps = {
        ["Find Under"] = "",
        ['Add Cursor Down'] = '<M-j>',
        ['Add Cursor Up'] = '<M-k>',
        ['Add Cursor At Pos'] = '<Leader>\''
      }
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "TimUntersberger/neogit",
        config = {
          disable_commit_confirmation = true
        }
      },
    },
    commit = "9359f7b1dd3cb9fb1e020f57a91f8547be3558c6",
    config = {
      keymaps = {
        view = {
          ["<C-m>"] = "<CMD>DiffviewClose<CR>",
        },
        file_panel = {
          ["<C-m>"] = "<CMD>DiffviewClose<CR>",
        }
      }
    }
  },
  {
    url = "ssh://git@gitlab-master.nvidia.com:12051/asubramaniam/gp.nvim.git",
    lazy = false,
    config = function()
      require("gp").setup()
    end,
  }
}
return plugins
