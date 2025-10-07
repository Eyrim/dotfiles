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
-- Does require core.esupports.metagen
-- https://github.com/nvim-neorg/neorg/wiki/Metagen
vim.api.nvim_create_autocmd('BufWritePost', {
    group = norg,
    pattern = { '*.norg' },
    command = ':=UpdateNorgMetaAndSave' -- TODO just use the callback key rather than a separate func
})


-- Set the hl for floating windows to be actually visible, 
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#45484a' })
  end,
})

