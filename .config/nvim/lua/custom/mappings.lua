local M = {}

M.fede = {
  i = {
    ["jk"] = { "<ESC>", "Exit insert mode" },
    ["<A-j>"] = { "<End><CR>", "New line down"},
    ["<A-k>"] = { "<Up><End><Cr>", "New line up"},
  },
  n = {
    ["<C-a>"] = { "<cmd> normal! gg0VG <CR>", "Select All" },
    ["<A-k>"] = { "<cmd>m-2<CR>" , "Move up"},
    ["<A-j>"] = { "<cmd>m+<CR>" , "Move down"},
    ["<C-p>"] = { "<cmd> lua vim.lsp.buf.format() <CR>" , "Prettier"},
    ["echo42"] = { "<cmd> echo '42 🥵' <CR>" , "Echo 42 🥵"},
  }
}

return M
