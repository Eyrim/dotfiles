local neogit = require('neogit')

neogit.setup({
    graph_style = "unicode",
    process_spinner = true,
    disable_insert_on_commit = true,
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

require('gitsigns').setup({
    current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 500,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
    },
})

-- The HL for the current line blame text
vim.api.nvim_set_hl(0, 'GitSignsCurrentLineBlame', { fg = "#a6a4a4", bold = false })

require('lazygit')

vim.keymap.set("n", "<leader>lg", "<CMD>:LazyGit<Cr>")

