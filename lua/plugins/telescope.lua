return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local utils = require("utils")
			local config = require("config/keymap")
			utils.setKeyMap(config.FindByFileName)
			utils.setKeyMap(config.FindByGitStatus)
			utils.setKeyMap(config.FindByFileContent)
			utils.setKeyMap(config.Buffers)
		end,
	},
}
