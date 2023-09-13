return {
	"RRethy/vim-illuminate",
	init = function()
		require("illuminate").configure({
			providers = {
				"lsp",
				"treesitter",
			},
		})
	end,
}
