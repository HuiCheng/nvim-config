return {
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- font-hack-nerd-font
		init = function()
			require("bufferline").setup({
				options = {
					diagnostics = "nvim_lsp",
					offsets = {
						{
							text = "NvimTree",
							filetype = "NvimTree",
							highlight = "Directory",
							text_align = "left",
						},
					},
				},
			})

			local utils = require("utils")
			local config = require("config/keymap")

			utils.setKeyMap(config.bufferLinePrev)
			utils.setKeyMap(config.bufferLineNext)
			utils.setKeyMap(config.bufferLine1)
			utils.setKeyMap(config.bufferLine2)
			utils.setKeyMap(config.bufferLine3)
			utils.setKeyMap(config.bufferLine4)
			utils.setKeyMap(config.bufferLine5)
			utils.setKeyMap(config.bufferLine6)
			utils.setKeyMap(config.bufferLine7)
			utils.setKeyMap(config.bufferLine8)
			utils.setKeyMap(config.bufferLine9)
		end,
	},
}
