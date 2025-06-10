local lsp_config = require("lspconfig")

-- LSP's to not setup here:
---------------------------
-- dart_ls: configured by flutter_tools
lsp_config.nil_ls.setup({})
lsp_config.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})
vim.lsp.enable('bashls')

require("typescript-tools").setup({})
require("flutter-tools").setup({})
require("mason").setup()

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
