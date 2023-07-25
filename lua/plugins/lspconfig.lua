return {
    "neovim/nvim-lspconfig",

    config = function()
        require("plugins.lsp.cpp")
        require("plugins.lsp.rust")
        require("plugins.lsp.lua")
    end
}
