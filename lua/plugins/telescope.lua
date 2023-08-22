return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },

		config = function()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
							-- even more opts
						}

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					}
				}
			}
			require("telescope").load_extension("ui-select")

			local default_opts = { noremap = true, silent = true }
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<C-p>', ':Telescope fd<CR>', default_opts)
			vim.keymap.set('n', '<C-f>', builtin.live_grep, default_opts)
			vim.keymap.set('v', '<C-f>', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', default_opts)
			vim.keymap.set('n', '<leader>b', builtin.buffers, default_opts)
			vim.keymap.set('n', '<leader>h', builtin.help_tags, default_opts)
			vim.keymap.set('n', '<leader>no', ':Telescope notify', default_opts)
		end,
	},
}
