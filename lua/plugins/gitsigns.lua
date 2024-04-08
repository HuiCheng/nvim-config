return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufNewFile", "BufReadPre" },
		opts = {
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns

				local function map(mode, l, r, desc)
					vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
				end

				map("n", "]h", gs.next_hunk, "Next Hunk")
				map("n", "[h", gs.prev_hunk, "Prev Hunk")

				-- Actions
				map("n", "<space>ghs", gs.stage_hunk, "Stage hunk")
				map("n", "<space>ghr", gs.reset_hunk, "Reset hunk")
				map("v", "<space>ghs", function()
					gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, "Stage hunk")
				map("v", "<space>ghr", function()
					gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, "Reset hunk")

				map("n", "<space>ghS", gs.stage_buffer, "Stage buffer")
				map("n", "<space>ghR", gs.reset_buffer, "Reset buffer")

				map("n", "<space>ghu", gs.undo_stage_hunk, "Undo stage hunk")

				map("n", "<space>ghp", gs.preview_hunk, "Preview hunk")

				map("n", "<space>ghb", function()
					gs.blame_line({ full = true })
				end, "Blame line")
				map("n", "<space>ghB", gs.toggle_current_line_blame, "Toggle line blame")

				map("n", "<space>ghd", gs.diffthis, "Diff this")
				map("n", "<space>ghD", function()
					gs.diffthis("~")
				end, "Diff this ~")

				map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
			end,
			current_line_blame = true,
		},
	},
}
