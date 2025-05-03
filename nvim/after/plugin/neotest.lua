require("neotest").setup({
    adapters = {
        require('rustaceanvim.neotest')
    },
})

-- Run the nearest test
-- https://github.com/nvim-neotest/neotest?tab=readme-ov-file
vim.api.nvim_create_user_command(
    'Test',
    function()
        require("neotest").run.run()
    end,
    {
        nargs = 0
    }
)
