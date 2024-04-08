return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
		keys = {
			{ "<space>xx", "<cmd>TroubleToggle<CR>", desc = "Open/close trouble list" },
			{
				"<space>xw",
				"<cmd>TroubleToggle workspace_diagnostics<CR>",
				desc = "Open trouble workspace diagnostics",
			},
			{ "<space>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" },
			{ "<space>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list" },
			{ "<space>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble location list" },
			{ "<space>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" },
		},
	},
}
