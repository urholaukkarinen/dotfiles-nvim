return {
    "urholaukkarinen/code-stats-vim",
    name = "codestats",
    config = function()
        vim.g.codestats_api_key = os.getenv("CODESTATS_API_KEY")
    end,
}
