require 'lspconfig'.lua_ls.setup {
	cmd = { vim.fn.expand(vim.fn.stdpath('data') .. "/mason/packages/lua-language-server/bin/lua-language-server.exe") },
	root_dir = require('lspconfig.util').root_pattern(".git"),

	settings = {
		Lua = {
			format = {
				enable = true,
				defaultConfig = {
					indent_style = "tab",
					indent_size = "4",
				}
			},
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
