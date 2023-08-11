return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "#282627",
			timeout = 2000,
		})
		vim.notify = require("notify")
	end
}
