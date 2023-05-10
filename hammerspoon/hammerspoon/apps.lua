local function toggleApp(name)
  local app = hs.application.find(name)
  if not app or app:isHidden() then
    hs.application.launchOrFocus(name)
  elseif hs.application.frontmostApplication() ~= app then
    app:activate()
  else
    app:hide()
  end
end

local function toggleKitty()
   local kitty = hs.application.find("kitty")
   if not kitty then
      hs.execute("/Applications/kitty.app/Contents/MacOS/kitty -d ~ --hold tmux new-session -A -c ~ -s kitty", true)
   elseif kitty:isHidden() then
      hs.application.launchOrFocus("kitty")
   elseif hs.application.frontmostApplication() ~= kitty then
   else
      kitty:hide()
   end
end

local function toggleEmacs()
  local emacs = hs.application.find("Emacs")
  if not emacs then
     hs.execute("fish -c 'emacs'", true)
  elseif emacs:isHidden() then
     hs.application.launchOrFocus("emacs")
  elseif hs.application.frontmostApplication() ~= emacs then
  else
    emacs:hide()
  end
end

hs.hotkey.bind(mash, "s", function() toggleApp("Safari") end)
hs.hotkey.bind(mash, "e", function() toggleEmacs() end)
hs.hotkey.bind(mash, "f", function() toggleApp("Finder") end)
hs.hotkey.bind(mash, "c", function() toggleApp("Code") end)
hs.hotkey.bind(mash, "m", function() toggleApp("Mail") end)
hs.hotkey.bind(mash, "p", function() toggleApp("System Preferences") end)
hs.hotkey.bind(mash, "l", function() toggleApplication("slack") end)
hs.hotkey.bind(mash, "t", function() toggleKitty() end)
