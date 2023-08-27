local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").clangd.setup({
	capabilities = capabilities,
})
