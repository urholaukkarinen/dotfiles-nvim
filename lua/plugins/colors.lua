return {
	{
		"catppuccin/nvim",
		enabled = false,
		name = "catppuccin",
		config = function()
			require('catppuccin').setup {
				flavour = "macchiato",
			}
			vim.cmd('colorscheme catppuccin')
		end,
	},
	{
		"joshdick/onedark.vim",
		enabled = true,
		name = "onedark",
		config = function()
			vim.cmd('colorscheme onedark')
		end,
	},
	{
		"briones-gabriel/darcula-solid.nvim",
		dependencies = { "rktjmp/lush.nvim" },
		enabled = false,
		name = "darcula-solid",
		config = function()
			vim.cmd('colorscheme darcula-solid')
		end,
	},
	{
		"jacoborus/tender.vim",
		enabled = false,
		name = "tender",
		config = function()
			vim.cmd('colorscheme tender')
			vim.g.airline_theme = "tender"
		end,
	}
}
