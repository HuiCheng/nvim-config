return {
	{
		"sbdchd/neoformat",
		init = function()
			vim.g.neoformat_try_formatprg = 1
			vim.g.neoformat_only_msg_on_error = 1
			vim.g.neoformat_run_all_formatters = 1

			vim.g.neoformat_basic_format_trim = 0
			vim.g.neoformat_basic_format_align = 0
			vim.g.neoformat_basic_format_retab = 0

			vim.api.nvim_command([[autocmd BufWritePre * undojoin | Neoformat]])
		end,
	},
}
