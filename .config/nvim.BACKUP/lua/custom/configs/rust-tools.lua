local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local options = {
  server = {
    on_attack = on_attach,
    capabilities = capabilities,
  }
}

return options
