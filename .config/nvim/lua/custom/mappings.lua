local M = {}

M.crates = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window left" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window left" },
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
