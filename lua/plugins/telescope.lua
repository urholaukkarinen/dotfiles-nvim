return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },

		config = function()
			local default_opts = {noremap = true, silent = true}
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<C-p>', builtin.find_files, default_opts)
			vim.keymap.set('n', '<C-f>', builtin.live_grep, default_opts)
			vim.keymap.set('v', '<C-f>', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', default_opts)
			vim.keymap.set('n', '<leader>b', builtin.buffers, default_opts)
			vim.keymap.set('n', '<leader>h', builtin.help_tags, default_opts)
		end,
	},
}
