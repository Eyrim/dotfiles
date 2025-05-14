local function sessionizer(config, wezterm)
    local plugin = wezterm.plugin.require("https://github.com/mikkasendke/sessionizer.wezterm")
    local schema = {
        plugin.FdSearch {
            wezterm.home_dir .. "/",
            max_depth = 32,
            exclude = { ".local/" },
        },

        processing = plugin.for_each_entry(function(entry)
            entry.label = entry.label:gsub(wezterm.home_dir, "~")
        end)
    }

    table.insert(config.keys, {
        key = "S",
        mods = "ALT",
        action = plugin.show(schema)
    })
end

local function presentation(config, wezterm)
    wezterm.plugin.require("https://gitlab.com/xarvex/presentation.wez").apply_to_config(config)
end

return function(config, wezterm)
    -- C-A-P for presentation, fullscreen presentation through C-A-S-P
    presentation(config, wezterm)
    -- A-S-s to bring up proj-sel but super fancy
    sessionizer(config, wezterm)
end
