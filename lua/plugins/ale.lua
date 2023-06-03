return {
	{
		"dense-analysis/ale",
		init = function()
			local utils = require("utils")
			local config = require("config/keymap")

			utils.setKeyMap(config.alePrev)
			utils.setKeyMap(config.aleNext)
		end,
	},
}
