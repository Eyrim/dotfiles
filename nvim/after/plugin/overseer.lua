require("overseer").setup({
    templates = {
        "builtin",
        "user.run_shell_file",
    },
})

-- Shortcut for :OverseerRun
vim.api.nvim_create_user_command(
    'Ovr',
    function()
        vim.cmd(":OverseerRun")
    end,
    {
        nargs = 0
    }
)
-- Shortcut for :OverseerToggle
vim.api.nvim_create_user_command(
    'Ovt',
    function()
        vim.cmd(":OverseerToggle")
    end,
    {
        nargs = 0
    }
)


