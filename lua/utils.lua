local M = {}

function M.setKeyMap(args)
	vim.api.nvim_set_keymap(args[1], args[2], args[3], args[4])
end

function M.setBufKeyMap(bufnr, args)
	vim.api.nvim_buf_set_keymap(bufnr, args[1], args[2], args[3], args[4])
end

return M
