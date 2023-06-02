return {
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				size = function(term)
					if term.direction == "horizontal" then
						return 25
					elseif term.direction == "vertical" then
						return vim.o.columns * 0.4
					end
				end,
				start_in_insert = true,
			})

			local utils = require("utils")
			local config = require("config/keymap")
			utils.setKeyMap(config.termToggle)
			utils.setKeyMap(config.termToggleFloat)
		end,
	},
}
