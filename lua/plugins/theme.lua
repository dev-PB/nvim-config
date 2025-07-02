return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false,

		config = function()
			require("kanagawa").setup({
				compile = true,
			})

			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
