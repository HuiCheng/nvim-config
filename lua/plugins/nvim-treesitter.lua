return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "windwp/nvim-ts-autotag" },
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				indent = { enable = true },
				autotag = { enable = true },
				highlight = { enable = true },
				modules = {},
				sync_install = true,
				ignore_install = {},
				ensure_installed = {
					"c",

					"vim",
					"vimdoc",

					"go",
					"gomod",
					"gosum",
					"gowork",

					"lua",
					"luadoc",

					"bash",

					"json",
					"jsonc",

					"markdown",
					"markdown_inline",

					"css",
					"html",
					"javascript",
					"typescript",
				},
			})
		end,
	},
}
