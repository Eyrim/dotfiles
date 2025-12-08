local telescope = require("telescope")
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>ht', builtin.help_tags, { desc = 'Telescope help tags' })

telescope
    .setup({
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        -- file_ignore_patterns = { "^./.git/", "^node_modules/" },
        pickers = {
            find_files = {
                hidden = true
            },
        },
    })

telescope
    .load_extension("file_browser")
