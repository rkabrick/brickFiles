-- Specify Spoons which will be loaded
hspoon_list = {
    "SpeedMenu",
    "WinWin",
    "VimMode"
}

hs.hotkey.bind({'ctrl'}, ';', function()
  Vim:enter()
end)

Vim = hs.loadSpoon('VimMode')
Vim:enableKeySequence('k', 'j')
-- sometimes you need to check Activity Monitor to get the app's
-- real name
Vim:disableForApp('iTerm')
Vim:disableForApp('MacVim')
Vim:disableForApp('Terminal')
Vim:disableForApp('Emacs')

-- appM environment keybindings. Bundle `id` is prefered, but application `name` will be ok.
hsapp_list = {
    {key = 'w', name = 'Firefox'},
    {key = 'i', name = 'iTerm'},
    {key = 'f', name = 'Finder'},
    {key = 'm', name = 'Spotify'},
    {key = 'p', name = 'System Preferences'},
    {key = 'a', name = 'Activity Monitor'},
    {key = 'e', name = 'Emacs'},
    {key = 's', name = 'Spark'}
}

-- Modal supervisor keybinding, which can be used to temporarily disable ALL modal environments.
hsupervisor_keys = {{"cmd", "shift", "ctrl"}, "Q"}

-- Reload Hammerspoon configuration
hsreload_keys = {{"alt", "shift"}, "R"}

-- Toggle help panel of this configuration.
hshelp_keys = {{"alt", "shift"}, "/"}

----------------------------------------------------------------------------------------------------
-- Window hints keybinding: Focus to any window you want
hswhints_keys = {"alt", "tab"}

-- appM environment keybinding: Application Launcher
hsappM_keys = {"alt", "P"}

-- clipshowM environment keybinding: System clipboard reader
hsclipsM_keys = {"alt", "C"}

-- Lock computer's screen
hslock_keys = {"alt", "L"}

-- resizeM environment keybinding: Windows manipulation
hsresizeM_keys = {"alt", "W"}

-- Toggle Hammerspoon console
hsconsole_keys = {"alt", "Z"}
