return {
    "neovim/nvim-lspconfig",

    config = function()
        require("plugins.lsp.cpp")
    end
}