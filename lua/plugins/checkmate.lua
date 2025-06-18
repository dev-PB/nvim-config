return {
	"bngarren/checkmate.nvim",
	ft = "markdown", -- Lazy loads for Markdown files matching patterns in 'files'
	opts = {
		-- your configuration here
		-- or leave empty to use defaults
		keys = {
			["<leader>cc"] = "toggle",
			["<leader>cn"] = "create",
			["<leader>ca"] = "archive",
		},
		metadata = {
			ticket = {
				style = { fg = "#6b6b6b" },
				key = "<leader>ct",
				select_on_insert = true,
				jump_to_on_insert = "value",
				sort_order = 1,
			},
		},
		started = {
			aliases = { "init" },
			style = { fg = "#9fd6d5" },
			get_value = function()
				return tostring(os.date("%y/%m/%d %H:%M"))
			end,
			key = "<leader>Ts",
			sort_order = 20,
		},
		done = {
			aliases = { "completed", "finished" },
			style = { fg = "#96de7a" },
			get_value = function()
				return tostring(os.date("%y/%m/%d %H:%M"))
			end,
			key = "<leader>Td",
			on_add = function(todo_item)
				require("checkmate").set_todo_item(todo_item, "checked")
			end,
			on_remove = function(todo_item)
				require("checkmate").set_todo_item(todo_item, "unchecked")
			end,
			sort_order = 30,
		},
	},
}
