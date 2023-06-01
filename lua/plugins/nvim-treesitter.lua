return {
	{
		"nvim-treesitter/nvim-treesitter",
		init = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ensure_installed = { "html", "css", "vim", "lua", "go", "python", "javascript", "typescript" },
				highlight = {
					enable = true,
					disable = {},
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
