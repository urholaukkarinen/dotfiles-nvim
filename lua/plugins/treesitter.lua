return {
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { { 'nvim-treesitter/nvim-treesitter-context', config = true } },
        build = ':TSUpdate',
        event = { 'BufReadPost', 'BufNewFile' },
        opts = {
            ensure_installed = {
                'wgsl',
                'lua',
                'luadoc',
                'luap',
                'cpp',
                'markdown',
                'markdown_inline',
                'git_config',
                'git_rebase',
                'gitcommit',
                'gitignore',
                'gitattributes',
                'diff',
                'vim',
                'vimdoc',
                'regex',
                'rust',
                'python',
            },
            ignore_install = { '' },
            auto_install = true,
            matchup = { enable = true },
            highlight = { enable = true },
 incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
        },
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts)
        end,
    },
}
