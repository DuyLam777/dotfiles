-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Kanagawa (Gogh)'
config.font = wezterm.font 'Hack Nerd Font'
config.font_size = 10.0
config.window_background_opacity = 1
-- Tab bar
config.enable_tab_bar = false

-- I use X11
config.enable_wayland = false

-- Window padding
config.window_padding = {
    left = 2,
    right = 2,
    top = 0,
    bottom = 0,
}

-- cursor
config.default_cursor_style = 'SteadyBlock'

-- and finally, return the configuration to wezterm
return config
