local g = vim.g
local opt = vim.opt
local keymap = vim.keymap

g.mapleader = ","

opt.number = true
opt.swapfile = false
opt.relativenumber = true

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
vim.scriptencoding = "utf-8"

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.cursorline = true
opt.ignorecase = true
opt.termguicolors = true

opt.autoread = true
opt.autowriteall = true

keymap.set("n", "<space>+", "<C-a>", { desc = "Incurement number" })
keymap.set("n", "<space>-", "<C-x>", { desc = "Decurement number" })
keymap.set("n", "<space>ch", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local last_cursor_pos, last_line = vim.fn.line([['"]]), vim.fn.line("$")
		if last_cursor_pos > 1 and last_cursor_pos <= last_line then
			vim.fn.cursor(last_cursor_pos, 1)
		end
	end,
})
