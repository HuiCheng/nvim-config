local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").clangd.setup({
	capabilities = capabilities,
})

vim.api.nvim_command([[autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
