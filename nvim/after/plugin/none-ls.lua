require("null-ls").setup({
})

vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
