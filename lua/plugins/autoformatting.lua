return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },

	keys = {
		{
			"<leader>F",
			function()
				require("conform").format({ async = true })
			end,
			mode = "n",
			desc = "Format buffer",
		},
	},

	---@module "conform"
	---@type conform.setupOpts
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
		},

		format_on_save = { timeout_ms = 500 },

		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
		},
	},
}
