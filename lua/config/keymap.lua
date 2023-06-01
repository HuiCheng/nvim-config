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

	termToggle = { "n", "<space>tt", ":ToggleTerm<CR>", opts },
	nvimTreeToggle = { "n", "<space>ft", ":NvimTreeToggle<CR>", opts },
	gitPreviewHunk = { "n", "<space>gp", ":Gitsigns preview_hunk<CR>", opts },

	Files = { "n", "<space>ff", ":Telescope find_files<CR>", opts },
	GFiles = { "n", "<space>fg", ":Telescope live_grep<CR>", opts },
	Buffers = { "n", "<space>fb", ":Telescope buffers<CR>", opts },

	lspBufHover = { "n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts }, -- 查看函数帮助文档
	lspBufRename = { "n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts }, -- 变量重名名
	lspBufDefinition = { "n", "<C-[>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts }, -- 查看函数定义 回到上次的地方 <C-o>
	lspBufDeclaration = { "n", "<C-]>", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts }, -- 查看函数声明
	lspBufFormatting = { "n", "<space>lf", "<Cmd>lua vim.lsp.buf.format({async = true})<CR>", opts }, -- 格式化
	lspBufReferences = { "n", "<space>lr", "<Cmd>lua vim.lsp.buf.references()<CR>", opts }, -- 查看函数相关引用
}

return options
