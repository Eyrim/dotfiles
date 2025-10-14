---@type Wezterm
local wezterm = require("wezterm")
---@type Config
local config = wezterm.config_builder()

require("window")(config)
require("plugins")(config, wezterm)

config.font = wezterm.font 'Mononoki Nerd Font Mono'
-- this is fine i promise, the lua workspace doesn't know about catpuccin, but its included in wezterm
-- https://github.com/catppuccin/wezterm
---@diagnostic disable-next-line: assign-type-mismatch
config.color_scheme = "Catppuccin Frappe"

-- todo finish this just wont work yet but im sleepy
-- config.keys = {
--     {
--         action = tunicodes.DefaultAction, key = 'r', mods = 'CTRL|SHIFT' },
--     }
-- }

return config
