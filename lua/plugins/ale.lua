return {
	{
		"dense-analysis/ale",
		init = function()
			vim.keymap.set("n", "<C-j>", ":ALENextWrap<CR>", { desc = "ALENextWrap" })
			vim.keymap.set("n", "<C-k>", ":ALEPreviousWrap<CR>", { desc = "ALEPreviousWrap" })
		end,
	},
}
