return {
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- font-hack-nerd-font
		config = {
			options = {
				diagnostics = "nvim_lsp",
				offsets = {
					{
						text = "NvimTree",
						filetype = "NvimTree",
						highlight = "Directory",
						text_align = "left",
					},
				},
			},
		},
		init = function()
			local keymap = vim.keymap

			vim.api.nvim_create_user_command("BufferLineDelete", function()
				local file_exists = vim.fn.filereadable(vim.fn.expand("%p"))
				local modified = vim.api.nvim_buf_get_option(0, "modified")
				if file_exists == 0 and modified then
					local user_choice =
						vim.fn.input("The file is not saved, whether to force delete? Press enter or input [y/n]:")
					if user_choice == "y" or string.len(user_choice) == 0 then
						vim.cmd("bd!")
					end
					return
				end
				local force = not vim.bo.buflisted or vim.bo.buftype == "nofile"
				vim.cmd(force and "bd!" or string.format("bp | bd! %s", vim.api.nvim_get_current_buf()))
			end, { desc = "Delete the current Buffer while maintaining the window layout" })

			keymap.set("n", "<C-c>", ":BufferLineDelete<CR>", { desc = "close the current buffer" })
			keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", { desc = "move one buffer to the left" })
			keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", { desc = "move one buffer to the right" })
		end,
	},
}
