return {
	{
		"windwp/nvim-autopairs",
		init = function()
			require("nvim-autopairs").setup({
				-- coc plugin need to be set to false
				map_cr = true,
			})
		end,
	},
}
