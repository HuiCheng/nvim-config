return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	config = function()
		local utils = require("utils")
		local config = require("config/keymap")
		utils.setKeyMap(config.troubleToggle)
	end,
}
