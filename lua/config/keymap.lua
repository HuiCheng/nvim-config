local opts = { noremap = true, silent = true }
local options = {
	vimAll = { "n", "<C-a>", "gg<S-v>G", opts },
	vimSave = { "n", "<C-s>", ":w<CR>", opts },
	vimAdd = { "n", "+", "<C-x>", opts },
	vimSub = { "n", "-", "<C-a>", opts },

	vimWinNext = { "n", "zw", "<C-w>w", opts },
	vimWinUp = { "n", "zk", "<C-w>k", opts },
	vimWinDown = { "n", "zj", "<C-w>j", opts },
	vimWinLeft = { "n", "zh", "<C-w>h", opts },
	vimWinRight = { "n", "zl", "<C-w>l", opts },

	aleNext = { "n", "<C-j>", ":ALENextWrap<CR>", opts },
	alePrev = { "n", "<C-k>", ":ALEPreviousWrap<CR>", opts },

	bufferLinePrev = { "n", "<C-h>", ":BufferLineCyclePrev<CR>", opts },
	bufferLineNext = { "n", "<C-l>", ":BufferLineCycleNext<CR>", opts },
	bufferLine1 = { "n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts },
	bufferLine2 = { "n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts },
	bufferLine3 = { "n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts },
	bufferLine4 = { "n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts },
	bufferLine5 = { "n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts },
	bufferLine6 = { "n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts },
	bufferLine7 = { "n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts },
	bufferLine8 = { "n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts },
	bufferLine9 = { "n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts },

	termToggle = { "n", "<space>tt", '<Cmd>exe v:count1 . "ToggleTerm direction=horizontal"<CR>', opts },
	termToggleAll = { "n", "<space>ta", ":ToggleTermToggleAll<CR>", opts },
	termToggleFloat = { "n", "<space>tf", ":ToggleTerm direction=float<CR>", opts },
	ternLazyGit = { "n", "<space>tg", ':100TermExec cmd="lazygit; exit" direction=float<CR>', opts },
	nvimTreeToggle = { "n", "<space>ft", ":NvimTreeToggle<CR>", opts },
	gitDiffthis = { "n", "<space>gd", ":Gitsigns diffthis<CR>", opts },
	gitPreviewHunk = { "n", "<space>gp", ":Gitsigns preview_hunk<CR>", opts },

	Files = { "n", "<space>ff", ":Telescope find_files<CR>", opts },
	GFiles = { "n", "<space>fg", ":Telescope live_grep<CR>", opts },
	Buffers = { "n", "<space>fb", ":Telescope buffers<CR>", opts },

	lspBufHover = "K", -- 查看函数帮助文档
	lspBufDefinition = "gd", -- 查看函数定义 回到上次的地方 <C-o>
	lspBufRename = "<space>rn", -- 变量重名名
	lspBufFormatting = "<space>lf", -- 格式化
	lspBufReferences = "<space>lr", -- 查看函数相关引用
	lspBufListWorkspaceFolders = "<space>lp", -- 环境目录
}

return options
