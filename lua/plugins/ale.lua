return {
	{
		"dense-analysis/ale",
		init = function()
			local utils = require("utils")
			local config = require("config/keymap")
			local prevKey = config.alePrev
			local nextKey = config.aleNext

			utils.setKeyMap(config.alePrev)
			utils.setKeyMap(config.aleNext)
		end,
	},
}
