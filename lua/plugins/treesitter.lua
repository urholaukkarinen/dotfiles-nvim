return {
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = { { 'nvim-treesitter/nvim-treesitter-context', config = true } },
        build = ':TSUpdate',
        event = { 'BufReadPost', 'BufNewFile' },
        opts = {
            ensure_installed = {
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
        },
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts)
        end,
    },
}
