return {
	{
		"catppuccin/nvim",
		enabled = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require('catppuccin').setup {
				flavour = "macchiato",
			}
			vim.cmd('colorscheme catppuccin')
			vim.g.airline_theme = "catppuccin"
		end,
	},
	{
		"joshdick/onedark.vim",
		enabled = true,
		name = "onedark",
		priority = 1000,
		config = function()
			vim.cmd('colorscheme onedark')
			vim.g.airline_theme = "onedark"
		end,
	}
}
