return {
	"neovim/nvim-lspconfig",

	config = function()
		local lspconfig = require("lspconfig")
		require("plugins.lsp.cpp")
		require("plugins.lsp.rust")
		require("plugins.lsp.lua")
		require("plugins.lsp.wgsl")

		lspconfig.html.setup({
			root_dir = require('lspconfig.util').root_pattern(".git"),
		})
	end
}
