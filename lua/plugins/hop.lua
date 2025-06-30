return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {
		-- keys = "etovxqpdygfblzhckisuran",
		keys = "jfkdls;aurieowpqnvmcxz",
	},

	keys = {
		{ "<CR>", mode = "n", "<Cmd>HopWord<CR>" },
	},

	config = function()
		require("hop").setup()

		-- Configure Hop highlights so that none of them are dimmed
		local color = "#FFD602"
		vim.api.nvim_set_hl(0, "HopNextKey", { fg = color, bold = true, ctermfg = 198, cterm = { bold = true } })
		vim.api.nvim_set_hl(0, "HopNextKey1", { fg = color, bold = true, ctermfg = 198, cterm = { bold = true } })
		vim.api.nvim_set_hl(0, "HopNextKey2", { fg = color, bold = true, ctermfg = 198, cterm = { bold = true } })
	end,
}
