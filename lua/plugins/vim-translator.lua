return {
	"voldikss/vim-translator",
	init = function()
		local utils = require("utils")
		local config = require("config/keymap")
		utils.setKeyMap(config.Translate)
		utils.setKeyMap(config.VTranslate)
	end,
}
