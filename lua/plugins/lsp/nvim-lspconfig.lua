return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufNewFile", "BufReadPre" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "folke/neodev.nvim", opts = {} },
			{ "antosha417/nvim-lsp-file-operations", config = true },
		},
		config = function()
			local keymap = vim.keymap
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local mason_lspconfig = require("mason-lspconfig")

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					local opts = { buffer = ev.buf, silent = true }

					opts.desc = "Show LSP references"
					keymap.set("n", "gR", ":Telescope lsp_references<CR>", opts)

					opts.desc = "Show LSP definitions"
					keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", opts)

					opts.desc = "Show LSP implementations"
					keymap.set("n", "gi", ":Telescope lsp_implementations<CR>", opts)

					opts.desc = "Show LSP type definitions"
					keymap.set("n", "gt", ":Telescope lsp_type_definitions<CR>", opts)

					opts.desc = "Go to declaration"
					keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

					opts.desc = "See available code actions"
					keymap.set({ "n", "v" }, "<space>lc", vim.lsp.buf.code_action, opts)

					opts.desc = "Smart rename"
					keymap.set("n", "<space>lrn", vim.lsp.buf.rename, opts)

					opts.desc = "Show documentation for what is under cursor"
					keymap.set("n", "K", vim.lsp.buf.hover, opts)

					opts.desc = "Show current buffer diagnostics"
					keymap.set("n", "<space>lda", ":Telescope diagnostics bufnr=0<CR>", opts)

					opts.desc = "Go to previous diagnostic"
					keymap.set("n", "<space>ldk", vim.diagnostic.goto_prev, opts)

					opts.desc = "Go to next diagnostic"
					keymap.set("n", "<space>ldj", vim.diagnostic.goto_next, opts)

					opts.desc = "Show details diagnostics"
					keymap.set("n", "<space>ldd", vim.diagnostic.open_float, opts)

					opts.desc = "Format code"
					keymap.set("n", "<space>lf", ":lua vim.lsp.buf.format({ async = true })<CR>", opts)

					opts.desc = "Show workspace path"
					keymap.set(
						"n",
						"<space>lp",
						":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
						opts
					)

					local symbols = {
						"Class",
						"Function",
						"Method",
						"Constructor",
						"Interface",
						"Module",
						"Struct",
						"Trait",
						"Field",
						"Property",
						"Enum",
						"Constant",
					}

					opts.desc = "Goto symbol"
					keymap.set("n", "<space>ls", function()
						require("telescope.builtin").lsp_document_symbols({ symbols = symbols })
					end, opts)

					opts.desc = "Goto symbol (workspace)"
					keymap.set("n", "<space>lS", function()
						require("telescope.builtin").lsp_dynamic_workspace_symbols({ symbols = symbols })
					end, opts)
				end,
			})

			local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			end

			local capabilities = cmp_nvim_lsp.default_capabilities()
			mason_lspconfig.setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
		end,
	},
}
