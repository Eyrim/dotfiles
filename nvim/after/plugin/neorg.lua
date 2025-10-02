local neorg = require('neorg')
local notesDir = "/home/eyrim/Documents/notes"
local researchDir = "~/Documents/research/"

-- broken
-- vim.fn.mkdir(notesDir, 'p')
-- vim.fn.mkdir(researchDir, 'p')

neorg.setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.syntax"] = {},
        ["core.esupports.metagen"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = notesDir,
                    research = researchDir,
                }
            },
        },
    }
})
