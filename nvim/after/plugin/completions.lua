local nvim_cmp = require("cmp")
local luasnip = require("luasnip")

nvim_cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
        -- Doesn't play well with lsp completions
        -- completion = nvim_cmp.config.window.bordered(),
        -- documentation = nvim_cmp.config.window.bordered(),
    },
    mapping = nvim_cmp.mapping.preset.insert({
        ["<C-b>"] = nvim_cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = nvim_cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = nvim_cmp.mapping.complete(),
        ["<C-e>"] = nvim_cmp.mapping.abort(),
        ["<CR>"] = nvim_cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = nvim_cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "luasnip" }, -- For luasnip users.
        },
        {
            { name = "buffer" },
        },
        {
            { name = "lazydev" },
        },
        {
            { name = "nvim_lsp_signature_help" },
        }),
})
