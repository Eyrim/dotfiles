local bufCheck = vim.api.nvim_create_augroup('bufcheck', { clear = true })
local norg = vim.api.nvim_create_augroup('norg', { clear = true })

-- start git messages in insert mode
vim.api.nvim_create_autocmd('FileType', {
    group   = bufCheck,
    pattern = { 'gitcommit', 'gitrebase', },
    command = 'startinsert | 1'
})

function UpdateNorgMetaAndSave()
    vim.cmd(":Neorg update-metadata")
    vim.cmd(":w")
end

-- When writing a norg file, update the metadata
-- Works on both :w and :wq
-- Does require core.esupports.metagen
-- https://github.com/nvim-neorg/neorg/wiki/Metagen
vim.api.nvim_create_autocmd('BufWritePost', {
    group = norg,
    pattern = { '*.norg' },
    command = ':=UpdateNorgMetaAndSave'
})
