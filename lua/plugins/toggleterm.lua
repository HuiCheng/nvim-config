return {
	{
		"akinsho/toggleterm.nvim",
		config = true,
		init = function()
			require("toggleterm").setup({
				size = 20,
				start_in_insert = true,
			})

			local utils = require("utils")
			local config = require("config/keymap")
			local toggleKey = config.termToggle
			utils.setKeyMap(config.termToggle)
		end,
	},
}
