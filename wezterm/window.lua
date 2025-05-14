return function (config)
    config.hide_tab_bar_if_only_one_tab = true
    -- Disable the tab bar
    config.window_decorations = 'RESIZE'

    config.window_padding = {
        left = 2,
        right = 2,
        top = 0,
        bottom = 0,
    }

    config.window_background_opacity = 0.85
end
