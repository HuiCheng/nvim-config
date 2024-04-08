local opts = { noremap = true, silent = true }
local options = {
	Translate = { "n", "<space>ts", ":TranslateW<CR>", opts },
	VTranslate = { "v", "<space>ts", ":'<,'>TranslateW<CR>", opts },
}

return options
