local wezterm = require "wezterm"
local config = {}

config.font = wezterm.font 'Mononoki Nerd Font Mono'
config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}
config.color_scheme = "Catppuccin Mocha"
config.hide_tab_bar_if_only_one_tab = true

return config
