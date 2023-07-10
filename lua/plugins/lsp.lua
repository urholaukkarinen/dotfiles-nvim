return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local util = require("lspconfig/util")

			lspconfig.rust_analyzer.setup({
				capabilities = vim.lsp.protocol.make_client_capabilities(),
				settings = {
					['rust-analyzer'] = {
						cargo = {
							allFeatures = true,
						}
					}
				}
			})
		end,
	}
}
