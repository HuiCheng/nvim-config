return {
	{
		"stevearc/conform.nvim",
		cmd = { "ConformInfo" },
		event = { "BufNewFile", "BufWritePre" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = { "n", "v" },
				desc = "Format buffer",
			},
		},
		opts = {
			format_on_save = { timeout_ms = 500, lsp_fallback = true },
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				go = { "goimports", "gofumpt" },
			},
		},
		init = function()
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},
}
