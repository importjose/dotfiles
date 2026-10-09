local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.color_scheme = "Nord (Gogh)"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 12.5

-- Define leader since you use LEADER in keybindings
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

config.background = {
  {
    source = { Color = "#121418" },
    width = "100%",
    height = "100%",
  },
}

config.window_padding = {
  left = 3,
  right = 3,
  top = 10,
  bottom = 10,
}

config.keys = {
  {
    key = "|",
    mods = "LEADER|SHIFT",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = "-",
    mods = "LEADER",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
  },

  -- Navigate panes with CTRL+SHIFT+Arrows
  { key = "LeftArrow",  mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection "Left" },
  { key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection "Right" },
  { key = "UpArrow",    mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection "Up" },
  { key = "DownArrow",  mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection "Down" },
  { key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane { confirm = true } },
  { key = "c", mods = "LEADER", action = wezterm.action.SpawnTab "CurrentPaneDomain" },
  { key = "w", mods = "LEADER", action = wezterm.action.CloseCurrentTab { confirm = true } },


  -- Navigate tabs with CMD+OPT+Arrows
  { key = "LeftArrow",  mods = "CMD|OPT", action = wezterm.action.ActivateTabRelative(-1) },
  { key = "RightArrow", mods = "CMD|OPT", action = wezterm.action.ActivateTabRelative(1) },
}

return config

