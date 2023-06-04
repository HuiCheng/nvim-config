local g = vim.g
local opt = vim.opt

local utils = require("utils")
local config = require("config/keymap")

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

utils.setKeyMap(config.vimAdd)
utils.setKeyMap(config.vimSub)
utils.setKeyMap(config.vimAll)
utils.setKeyMap(config.vimSave)

utils.setKeyMap(config.vimWinNext)
utils.setKeyMap(config.vimWinUp)
utils.setKeyMap(config.vimWinDown)
utils.setKeyMap(config.vimWinLeft)
utils.setKeyMap(config.vimWinRight)

vim.cmd([[
    function HeaderPython()
    	call setline(1, "#!/usr/bin/env python3")
    	call  append(1, "# -*- coding: utf-8 -*-")
    	call  append(2, "# Hui @ " . strftime('%Y-%m-%d %T', localtime()))
    	normal G
    	normal o
    	normal o
    endfunction
]])
vim.api.nvim_command([[autocmd BufNewfile *.py call HeaderPython()]])
