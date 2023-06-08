local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "cssmodules_ls" }
local util = require "lspconfig/util"


for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


-- local pid = vim.fn.getpid()
-- local omnisharp_bin = "/home/fede/Downloads/omnisharp-vim/run"

-- require'lspconfig'.omnisharp.setup{
--   cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
--   root_dir = lspconfig.util.root_pattern("*.csproj","*.sln");
-- }
