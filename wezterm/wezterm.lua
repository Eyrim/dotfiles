local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("window")(config)
require("plugins")(config, wezterm)

config.font = wezterm.font 'Mononoki Nerd Font Mono'
config.color_scheme = "Catppuccin Mocha"

return config
