return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		init = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = { "gopls", "lua_ls", "pyright" },
				automatic_installation = true,
			})
		end,
	},
}
