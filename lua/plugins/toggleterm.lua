return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		direction = "float",
		persist_mode = false,

		float_opts = {
			border = "curved",
		},
	},

	keys = {
		{
			"<C-M-n>",
			require("config.custom_functions").toggle_or_create_terminal,
			mode = "n",
			desc = "Toggle the terminal",
		},
		{
			"<C-M-n>",
			"<C-\\><C-n><Cmd>ToggleTerm<CR>",
			mode = "t",
			desc = "Toggle the terminal",
		},
	},
}
