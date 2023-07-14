return {
    "urholaukkarinen/code-stats-vim",
    dependencies = { "vim-airline/vim-airline" },
    name = "codestats",
    config = function()
        vim.g.codestats_api_key = os.getenv("CODESTATS_API_KEY")
        vim.cmd("let g:airline_section_x = airline#section#create_right(['tagbar', 'filetype', '%{CodeStatsXp()}'])")
    end,
}
