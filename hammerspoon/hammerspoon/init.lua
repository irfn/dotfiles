mash = {"⌘", "⌥", "⌃"}

require "apps"
require "grid"

hs.hotkey.bind(mash, "r", function() hs.reload(); end)

hs.alert("HS config loaded")
