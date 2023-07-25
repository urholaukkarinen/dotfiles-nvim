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
		end,
	},
	{
		"joshdick/onedark.vim",
		enabled = true,
		name = "onedark",
		priority = 1000,
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
    }
}
