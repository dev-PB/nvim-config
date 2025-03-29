return {
    {
		'Mofiqul/vscode.nvim',
		name = 'vscode',
		lazy = false,

        config = function()
			require('vscode').setup()

			vim.cmd.colorscheme "vscode"
		end
	},
}
