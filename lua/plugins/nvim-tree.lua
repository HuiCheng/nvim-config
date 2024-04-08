return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = {
			sort_by = "case_sensitive",
			view = { width = 35 },
			actions = { open_file = { quit_on_open = false } },
			filters = { git_ignored = false, custom = { "^.git$", "^node_modules$" } },
			renderer = { icons = { show = { git = true, file = true, folder = true, folder_arrow = true } } },
		},
		init = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			vim.api.nvim_create_autocmd("BufEnter", {
				nested = true,
				callback = function()
					if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
						vim.cmd("quit")
					end
				end,
			})

			local keymap = vim.keymap

			keymap.set("n", "<space>ee", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" })
			keymap.set(
				"n",
				"<space>ef",
				"<cmd>NvimTreeFindFileToggle<CR>",
				{ desc = "toggle file explorer on current file" }
			)
			keymap.set("n", "<space>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "collapse file explorer" })
			keymap.set("n", "<space>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" })
		end,
	},
}
