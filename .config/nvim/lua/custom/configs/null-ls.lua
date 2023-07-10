local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,

  lint.eslint,
}

null_ls.setup {
  debug = true,
  sources = sources,
  -- FEDE autoprettier
  -- on_attach = function(client)
  --   vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
  -- end,
}
