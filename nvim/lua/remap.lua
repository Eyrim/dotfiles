-- Shift hangover cure when quitting
vim.api.nvim_create_user_command(
    'Q',
    function()
        vim.cmd(":q")
    end,
    {
        nargs = 0
    }
)
