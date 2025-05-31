require("catppuccin").setup({
    flavor = "frappe",
    transparent_background = true,
    integrations = {
        treesitter = true,
        gitsigns = true,
        cmp = true,
    },
})

vim.cmd.colorscheme("catppuccin-frappe")
