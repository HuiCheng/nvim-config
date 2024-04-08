return {
	{
		"mfussenegger/nvim-dap",
		init = function()
			require("dapui").setup({
				icons = { expanded = "", collapsed = "", current_frame = "" },
				mappings = {
					expand = { "<CR>", "<2-LeftMouse>" },
					open = "o",
					remove = "d",
					edit = "e",
					repl = "r",
					toggle = "t",
				},
				element_mappings = {},
				expand_lines = vim.fn.has("nvim-0.7") == 1,
				force_buffers = true,
				layouts = {
					{
						elements = {
							{ id = "scopes", size = 0.25 },
							{ id = "breakpoints", size = 0.25 },
							{ id = "stacks", size = 0.25 },
							{ id = "watches", size = 0.25 },
						},
						size = 40,
						position = "right",
					},
					{
						elements = {
							"repl",
						},
						size = 20,
						position = "bottom",
					},
				},
				floating = {
					max_height = nil,
					max_width = nil,
					border = "single",
					mappings = {
						["close"] = { "q", "<Esc>" },
					},
				},
				controls = {
					enabled = vim.fn.exists("+winbar") == 1,
					element = "repl",
					icons = {
						pause = "",
						play = "",
						step_over = "",
						step_into = "",
						step_out = "",
						step_back = "",
						run_last = "",
						terminate = "",
						disconnect = "",
					},
				},
				render = {
					max_type_length = nil, -- Can be integer or nil.
					max_value_lines = 100, -- Can be integer or nil.
					indent = 1,
				},
			})
			require("dap-go").setup()

			local dap = require("dap")
			local dapui = require("dapui")

			local get_args = function()
				local cmd_args = vim.fn.input("CommandLine Args:")
				local params = {}
				for param in string.gmatch(cmd_args, "[^%s]+") do
					table.insert(params, param)
				end
				return params
			end

			dap.adapters.delve = {
				type = "server",
				port = "${port}",
				executable = {
					command = "dlv",
					args = { "dap", "-l", "127.0.0.1:${port}" },
				},
			}

			dap.configurations.go = {
				{
					name = "Debug",
					args = get_args,
					type = "delve",
					request = "launch",
					program = "${file}",
				},
				{
					name = "Debug test",
					args = get_args,
					mode = "test",
					type = "delve",
					request = "launch",
					program = "${file}",
				},
				{
					name = "Debug test (go.mod)",
					args = get_args,
					mode = "test",
					type = "delve",
					request = "launch",
					program = "./${relativeFileDirname}",
				},
			}

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end

			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			vim.keymap.set("n", "<F5>", require("dap").continue, { desc = "Continue" })
			vim.keymap.set("n", "<space>dc", require("dap").continue, { desc = "Continue" })
			vim.keymap.set("n", "<space>do", require("dap").step_over, { desc = "Step over" })
			vim.keymap.set("n", "<space>di", require("dap").step_into, { desc = "Step into" })
			vim.keymap.set("n", "<space>dg", require("dap").step_out, { desc = "Step out" })
			vim.keymap.set("n", "<space>db", require("dap").toggle_breakpoint, { desc = "Toggle breakpoint" })
		end,
		dependencies = {
			"leoluz/nvim-dap-go",
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
	},
}
