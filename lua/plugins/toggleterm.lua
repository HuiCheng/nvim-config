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

			local keymap = vim.keymap

			keymap.set("n", "<space>ta", ":ToggleTermToggleAll<CR>", { desc = "Terminal Toggle all" })
			keymap.set("n", "<space>tf", ":ToggleTerm direction=float count=101<CR>", { desc = "Terminal float" })
			keymap.set("n", "<space>tg", ":lua lazygitTermFloat:toggle()<CR>", { desc = "Terminal float lazygit" })
			keymap.set(
				"n",
				"<space>tt",
				':exe v:count1 . "ToggleTerm direction=horizontal count=101"<CR>',
				{ desc = "Terminal botton" }
			)

			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				vim.keymap.set("t", "<space><C-,>", [[<C-\><C-n>]], opts)
			end

			_G.lazygitTermFloat =
				require("toggleterm.terminal").Terminal:new({ cmd = "lazygit", direction = "float", count = 100 })

			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
