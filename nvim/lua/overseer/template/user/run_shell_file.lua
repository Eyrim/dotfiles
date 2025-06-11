return {
    name = "Run shell file",
    builder = function()
        local file = vim.fn.expand("%:p")

        return {
            cmd = { "sh" },
            args = { file },
            components = {
                {
                    "on_output_quickfix",
                    open = true
                },
                "default",
            },
        }
    end,
    condition = {
        filetype = { "sh" },
    },
}
