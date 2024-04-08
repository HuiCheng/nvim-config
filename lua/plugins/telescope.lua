return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					path_display = { "smart" },
					mappings = {
						i = {
							["<C-f>"] = actions.to_fuzzy_refine,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
				},
			})

			telescope.load_extension("fzf")

			local keymap = vim.keymap

			keymap.set("n", "<space>fr", ":Telescope oldfiles<CR>", { desc = "Find recent files" })
			keymap.set("n", "<space>fb", ":Telescope buffers<CR>", { desc = "Find buffers in cwd" })
			keymap.set("n", "<space>ff", ":Telescope find_files<CR>", { desc = "Find files in cwd" })
			keymap.set("n", "<space>fs", ":Telescope live_grep<CR>", { desc = "Find string in cwd" })
			keymap.set("n", "<space>fc", ":Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })

			keymap.set("n", "<space>fh", ":Telescope command_history<CR>", { desc = "Command history" })

			keymap.set("n", "<space>fgs", ":Telescope git_status<CR>", { desc = "Find files in git status" })
		end,
	},
}
