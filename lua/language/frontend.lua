local tsCapabilities = vim.lsp.protocol.make_client_capabilities()
tsCapabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").cssls.setup({
	capabilities = tsCapabilities,
})
require("lspconfig").cssmodules_ls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

require("lspconfig").tsserver.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

require("lspconfig").tailwindcss.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
