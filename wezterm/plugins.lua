---@param config Config
---@param wezterm Wezterm
local function presentation(config, wezterm)
    wezterm.plugin.require("https://gitlab.com/xarvex/presentation.wez").apply_to_config(config)
end

-- ---@param config Config
-- ---@param wezterm Wezterm
-- local function tunicodes(config, wezterm)
--     wezterm.plugin.require("https://gitlab.com/lilaqua/tunicodes").apply_to_config(config)
-- end

---@param config Config
---@param wezterm Wezterm
function Callback(config, wezterm)
    -- C-A-P for presentation, fullscreen presentation through C-A-S-P
    presentation(config, wezterm)
    -- tunicodes(config, wezterm)
end

return Callback

