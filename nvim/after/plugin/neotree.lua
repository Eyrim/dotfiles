require("neo-tree").setup({
    filesystem = {
        filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = true,
            },
        },
        window = {
            mappings = {
                ["l"] = "open",
                ["h"] = "close_node",
                ["S"] = "open_split",
                ["s"] = "open_vsplit",
                ["t"] = "open_tabnew",
        },
    },
})

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right toggle<CR>")
