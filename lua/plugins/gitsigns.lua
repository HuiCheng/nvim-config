return {
	{
		"lewis6991/gitsigns.nvim",
		init = function()
			require("gitsigns").setup({
				current_line_blame = true,
			})

			local utils = require("utils")
			local config = require("config/keymap")
			utils.setKeyMap(config.gitDiffthis)
			utils.setKeyMap(config.gitPreviewHunk)
		end,
	},
}
