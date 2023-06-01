return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		init = function()
			local utils = require("utils")
			local config = require("config/keymap")
			utils.setKeyMap(config.Files)
			utils.setKeyMap(config.GFiles)
			utils.setKeyMap(config.Buffers)
		end,
	},
}
