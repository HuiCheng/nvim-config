return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "windwp/nvim-ts-autotag" },
		config = function()
			require("nvim-treesitter.configs").setup({
				autotag = {
					enable = true,
				},
				modules = {},
				auto_install = true,
				ensure_installed = { "cpp", "html", "css", "vim", "lua", "go", "python", "javascript", "typescript" },
				ignore_install = {},
				sync_install = false,
				highlight = {
					enable = true,
					disable = { "html" },
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
