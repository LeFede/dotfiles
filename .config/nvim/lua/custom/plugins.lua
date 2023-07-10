local plugins = {
  {
    -- LSP
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
 {
    -- MASON
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        -- "emmet-language-server",
        "css-lsp",
        "cssmodules-language-server",
        "emmet-ls",
        "prettier",
      }
    }
  },
  {
    -- HIGHLIGHT
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
      }
    }
  },
  {
    -- AUTO SAVE
    "Pocco81/auto-save.nvim",
    event = "TextChanged",
    config = function()
      require("auto-save").setup()
    end
  },
  {
    -- TMUX NAVIGATOR
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
}

return plugins
