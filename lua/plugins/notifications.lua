return {
	"folke/snacks.nvim",

	---@type snacks.Config
	opts = {
		notifier = { enable = true },
	},

	keys = {
		{
			"<leader>n",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Notification History",
		},
	},
}

