return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300

			local wk = require("which-key")
			wk.register({
				["<space>"] = {
					c = { "+Clear" },
					e = { "+Explorer" },
					d = { "+Debug" },
					l = { "+Lsp", d = { "+Diagnostic" } },
					g = { "+Git", h = { "+Hunk" } },
					f = { "+Find", c = { "+Find to do comment" }, g = { "+Github" } },
					t = { "+Terminal or translation", s = { "+Translation" } },
					w = { "+Windowns" },
					x = { "+Trouble" },
				},
			})
		end,
	},
}
