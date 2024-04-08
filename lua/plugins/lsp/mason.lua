return {
	{
		"williamboman/mason.nvim",
		config = {
			max_concurrent_installers = 10,
		},
		init = function()
			local options = {
				ensure_installed = {
					"clangd",

					"stylua",
					"lua-language-server",

					"shfmt",
					"bash-language-server",

					"impl",
					"delve",
					"gopls",
					"gofumpt",
					"goimports",
					"gomodifytags",

					"css-lsp",
					"emmet-ls",
					"html-lsp",
					"prettier",
					"eslint_d",
					"svelte-language-server",
					"typescript-language-server",
					"tailwindcss-language-server",
					"graphql-language-service-cli",

					"isort",
					"black",
					"pylint",
				},
			}

			vim.api.nvim_create_user_command("MasonInstallAll", function()
				vim.cmd("MasonInstall " .. table.concat(options.ensure_installed, " "))
			end, {})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = {
			ensure_installed = {},
			automatic_installation = true,
		},
	},
}
