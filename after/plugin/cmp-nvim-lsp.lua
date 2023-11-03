local lspconfig = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = { 'rust_analyzer', 'tsserver' }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities
    }
end

lspconfig.emmet_ls.setup {
    capabilities = capabilities,
    filetypes = {
        'html',
        'javascriptreact',
        'typescriptreact',
    },
}
