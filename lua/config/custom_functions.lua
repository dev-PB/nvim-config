return {
	-- See https://github.com/akinsho/toggleterm.nvim/wiki/Tips-and-Tricks#init-a-terminal-if-not-exist
	toggle_or_create_terminal = function()
		vim.cmd([[ ToggleTermToggleAll ]])

		local buffers = vim.api.nvim_list_bufs()

		local has_toggleterm = false

		for _, buf in ipairs(buffers) do
			local buf_name = vim.api.nvim_buf_get_name(buf)

			if buf_name:find("toggleterm#") then
				has_toggleterm = true
				break
			end
		end

		if not has_toggleterm then
			vim.cmd([[ exe 1 . "ToggleTerm" ]])
		end
	end,

	toggle_relative_numbers = function()
		vim.wo.relativenumber = not vim.wo.relativenumber
	end,
}
