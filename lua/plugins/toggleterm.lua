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
			utils.setKeyMap(config.ternLazyGit)
			utils.setKeyMap(config.termToggleAll)
			utils.setKeyMap(config.termToggleFloat)

			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				vim.keymap.set("t", "<C-,>", [[<C-\><C-n>]], opts)
			end
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
