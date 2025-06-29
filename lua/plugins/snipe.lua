return {
	"leath-dub/snipe.nvim",
	keys = {
		{
			"<Leader>s",
			function()
				require("snipe").open_buffer_menu()
			end,
			desc = "Open Snipe buffer menu",
		},
	},
	opts = {
		ui = {
			position = "topleft",
			preselect_current = true,
		},
	},
}
