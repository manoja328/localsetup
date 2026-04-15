local wezterm = require 'wezterm'
local config = {}

--config.color_scheme = 'Borland'
--config.color_scheme = 'Batman'
config.color_scheme = 'Dracula'

config.keys = {
  -- ALT+f → open Yazi in a left pane (30%)
  {
    key = 'f',
    mods = 'ALT',
    action = wezterm.action.SplitPane {
      command = { args = { '/opt/homebrew/bin/yazi' } },
      direction = 'Left',
      size = { Cells  = 30 },
    },
  },

  -- SHIFT+Enter → send newline
  {
    key = 'Enter',
    mods = 'SHIFT',
    action = wezterm.action.SendString('\n'),
  },
}

return config
