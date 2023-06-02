return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					local opts = { buffer = ev.buf }
					local config = require("config/keymap")
					vim.keymap.set("n", config.lspBufHover, vim.lsp.buf.hover, opts)
					vim.keymap.set("n", config.lspBufDefinition, vim.lsp.buf.definition, opts)
					vim.keymap.set("n", config.lspBufRename, vim.lsp.buf.rename, opts)
					vim.keymap.set("n", config.lspBufReferences, vim.lsp.buf.references, opts)
					vim.keymap.set("n", config.lspBufListWorkspaceFolders, function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, opts)
					vim.keymap.set("n", config.lspBufFormatting, function()
						vim.lsp.buf.format({ async = true })
					end, opts)
				end,
			})
		end,
	},
}
