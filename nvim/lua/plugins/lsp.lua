return {
    {
        "neovim/nvim-lspconfig",
    },
    {
        "pmizio/typescript-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "neovim/nvim-lspconfig"
        },
    },
    {
        "nvim-flutter/flutter-tools.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim", -- optional for vim.ui.select
        },
        config = true,
    },
    {
        "williamboman/mason.nvim"
    },
    {
        "folke/lazydev.nvim",
        dependencies = {
            'DrKJeff16/wezterm-types',
            lazy = true,
            version = false,
        },
        opts = {
            library = {
                { path = 'wezterm-types', mods = { 'wezterm' } },
            }
        },
    },
}
