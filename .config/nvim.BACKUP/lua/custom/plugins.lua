local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "emmet-language-server",
        "cssmodules-language-server",
        "emmet-ls"
      }
    }
  },
  {
    "Pocco81/auto-save.nvim",
    event = "TextChanged",
    config = function()
      require("auto-save").setup()
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  -- {
    -- "mfussenegger/nvim-dap",
  -- },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "vim",
        "lua",

        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "rust"
      }
    },
  }
}

return plugins
