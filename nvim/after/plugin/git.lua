local neogit = require('neogit')

neogit.setup({
    graph_style = "unicode",
    process_spinner = true
})

-- Open neogit, (Should override the one provided by the plugin)
vim.api.nvim_create_user_command(
    'Neogit',
    function()
        neogit.open({ kind = "floating" })
    end,
    {
        nargs = 0
    }
)

