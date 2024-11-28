-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
local function get_cursor_theme()
	local success, stdout, stderr =
		wezterm.run_child_process { 'xprop', '-root' }
	if not success then
		wezterm.log_error(
			('Command exited with non-zero exit code.\nStdout:\n%s\nStderr:\n%s'):format(
				stdout,
				stderr
			)
		)
		return nil
	end

	return stdout:match [[RESOURCE_MANAGER%(STRING%) = ".+\nXcursor.theme:\t(.+)\n.+"]]
end

-- config.xcursor_theme = get_cursor_theme()

-- For example, changing the color scheme:
config.color_scheme = "AdventureTime"

-- and finally, return the configuration to wezterm
return config

