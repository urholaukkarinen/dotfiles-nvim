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
	},
    {
        "briones-gabriel/darcula-solid.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        enabled = false,
        name = "darcula-solid",
        config = function()
			vim.cmd('colorscheme darcula-solid')
        end,
    }
}
