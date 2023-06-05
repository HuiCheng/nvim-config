return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- font-hack-nerd-font font-jetbrains-mono-nerd-font
		init = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			local nvimTree = require("nvim-tree")
			nvimTree.setup({
				sort_by = "case_sensitive",
				view = { width = 40 },
				actions = {
					open_file = { quit_on_open = false },
				},
				filters = { custom = { "^.git$", "^node_modules$" } },
				renderer = {
					icons = {
						show = {
							git = true,
							file = true,
							folder = true,
							folder_arrow = true,
						},
					},
				},
			})

			vim.api.nvim_create_autocmd("BufEnter", {
				nested = true,
				callback = function()
					if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
						vim.cmd("quit")
					end
				end,
			})

			local utils = require("utils")
			local config = require("config/keymap")
			utils.setKeyMap(config.nvimTreeToggle)
		end,
	},
}
