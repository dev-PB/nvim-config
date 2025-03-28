return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
	
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			ensure_installed = {
				"lua",
				"c_sharp",
				"python",
				"rust",
				"javascript",
				"typescript",
				"powershell",
				"sql",
				"html",
				"razor",
				"css",
				"scss",
				"json",
				"xml",
				"toml",
			},

			highlight = { enable = true},
			indent = { enable = true },
		})
	end
}
