require 'nvim-treesitter.configs'.setup {
    -- Auto install parsers when going into new file type
    auto_install = true,
    -- Enable highlighting
    highlight = {
        enable = true,
        -- Burgled from the docs
        -- Disable highlighting if a file is larger than a given size
        disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            print(string.format("Disabling treesitter for this file! It is larger than %s bytes", max_filesize))
            return true
        end
    end,
    }
}
