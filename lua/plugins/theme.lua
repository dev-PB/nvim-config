return {
    {
		'projekt0n/github-nvim-theme',
		name = 'github-theme',
		lazy = false,

        config = function()
			require('github-theme').setup()

			vim.cmd.colorscheme "github_dark_dimmed"
		end
	},
}
