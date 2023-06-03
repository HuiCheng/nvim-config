local _capabilities = vim.lsp.protocol.make_client_capabilities()
_capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").html.setup({
	capabilities = _capabilities,
})

require("lspconfig").cssls.setup({
	capabilities = _capabilities,
})

require("lspconfig").eslint.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
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

vim.api.nvim_command([[autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact]])
vim.api.nvim_command([[autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
vim.api.nvim_command([[autocmd Filetype typescriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab]])
