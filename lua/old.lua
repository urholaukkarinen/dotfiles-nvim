local dap = require('dap')
dap.adapters.lldb = {
	type = 'executable',
	command = 'lldb-vscode',
	name = 'lldb'
}

dap.configurations.cpp = {
	{
		name = 'Launch',
		type = 'lldb',
		request = 'launch',
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {},
	}
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

local dapui = require('dapui')
dap.listeners.after.event_initialized["dapui_config"]=function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"]=function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"]=function()
  dapui.close()
end

vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})

vim.keymap.set('n', '<F5>', require 'dap'.continue)
vim.keymap.set('n', '<F10>', require 'dap'.step_over)
vim.keymap.set('n', '<F11>', require 'dap'.step_into)
vim.keymap.set('n', '<F12>', require 'dap'.step_out)
vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)

require('neodev').setup({
	library = {	plugins = { "nvim-dap-ui" }, types = true },
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "cmake", "rust", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  ignore_install = {},

  highlight = {
    enable = true,
  },

  indent = {
	enable = true,
  },
}
