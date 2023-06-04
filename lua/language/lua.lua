local libs = vim.api.nvim_get_runtime_file("", true)

-- path with mac vim lib
table.insert(libs, "/usr/local/share/nvim/runtime/lua")
table.insert(libs, "/usr/local/share/nvim/runtime/lua/vim")
table.insert(libs, "/usr/local/share/nvim/runtime/lua/vim/lsp")

require("lspconfig").lua_ls.setup({
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				checkThirdParty = false,
				library = libs,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
