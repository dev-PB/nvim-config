return {
	"folke/snacks.nvim",

	---@type snacks.Config
	opts = {
		notifier = { enable = true },
	},

	keys = {
		{
			"<leader>N",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Notification History",
		},
	},
}
