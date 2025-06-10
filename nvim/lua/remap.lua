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

-- Shift hangover cure when writing
vim.api.nvim_create_user_command(
    'W',
    function()
        vim.cmd(":w")
    end,
    {
        nargs = 0
    }
)

