local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").html.setup({
	capabilities = capabilities,
})

require("lspconfig").emmet_ls.setup({
	capabilities = capabilities,
	filetypes = {
		"css",
		"eruby",
		"html",
		"javascript",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"svelte",
		"pug",
		"typescriptreact",
		"vue",
	},
	init_options = {
		html = {
			options = {
				["bem.enabled"] = true,
			},
		},
	},
})

require("lspconfig").cssls.setup({
	capabilities = capabilities,
})

require("lspconfig").eslint.setup({
	capabilities = capabilities,
})

require("lspconfig").cssmodules_ls.setup({
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	capabilities = capabilities,
})

require("lspconfig").tailwindcss.setup({
	capabilities = capabilities,
})

vim.api.nvim_command([[autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact]])
vim.api.nvim_command([[autocmd Filetype c setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype typescriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
