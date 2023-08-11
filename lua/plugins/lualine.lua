return {
	{
		"nvim-lualine/lualine.nvim",
		init = function()
			require("lualine").setup({
				sections = {
					lualine_c = { { "filename", path = 2 } },
				},
			})
		end,
	},
}
