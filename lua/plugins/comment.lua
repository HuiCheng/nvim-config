return {
	{ "tpope/vim-commentary", enabled = false },

	{
		"numToStr/Comment.nvim",
		event = { "BufNewFile", "BufReadPre" },
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		config = function()
			local comment = require("Comment")
			local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

			comment.setup({ pre_hook = ts_context_commentstring.create_pre_hook() })
		end,
	},

	{
		"folke/todo-comments.nvim",
		event = { "BufNewFile", "BufReadPre" },
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local todo_comments = require("todo-comments")

			local keymap = vim.keymap

			keymap.set("n", "<space>fcj", function()
				todo_comments.jump_next()
			end, { desc = "Next todo comment" })

			keymap.set("n", "<space>fck", function()
				todo_comments.jump_prev()
			end, { desc = "Previous todo comment" })

			keymap.set("n", "<space>fca", "<cmd>TodoTelescope<cr>", { desc = "Find todos comment on telescope" })

			todo_comments.setup()
		end,
	},
}
