return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		init = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({})
		end,
	},
}
