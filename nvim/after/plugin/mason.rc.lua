local ok, mason = pcall(require, 'mason')
if (not ok) then return end
local ok2, lspconfig = pcall(require, "mason-lspconfig")
if (not ok2) then return end

mason.setup()

lspconfig.setup {
  ensure_installed = { 'prettierd', 'eslint_d' },
}
