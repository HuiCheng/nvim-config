local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

vim.cmd([[ let g:ale_linters = {'cpp' : []} ]]) -- fix error on cpp file

require("basic")
require("lazy").setup("plugins")
require("language/c")
require("language/lua")
require("language/bash")
require("language/golang")
require("language/python")
require("language/frontend")

-- fix sometime leap not working
require("nvim-tree.api").tree.open()
vim.api.nvim_command([[autocmd VimEnter * wincmd w]])
