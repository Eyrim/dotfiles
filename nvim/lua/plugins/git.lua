return {
    {
        "NeogitOrg/neogit",
        -- also require's telescope :)
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration
        },
    },
    {
        "rbong/vim-flog",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
    },
    {
        "lewis6991/gitsigns.nvim",
    },
    {
        "kdheepak/lazygit.nvim",
    }
}
