return {
	"mfussenegger/nvim-lint",

	event = {
		"BufReadPre",
		"BufNewFile",
	},

	config = function()
		local linter = require("lint")

		linter.linters_by_ft = {
			python = { "pylint" },
			javascript = { "eslint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({
			"BufEnter",
			"BufWritePost",
			"InsertLeave",
		}, {
			group = lint_augroup,
			callback = function()
				linter.try_lint()
			end,
		})
	end,
}
