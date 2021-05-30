#!/usr/bin/env sh
echo "switch hammerspoon config dir"
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"

echo "Show filename extensions in finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Enable text selection in QL by default"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Use column view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle Clmv

echo "Disable creation of .DS_Store on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Enable status bar."
defaults write com.apple.finder ShowStatusBar -bool true

echo "Enable path bar."
defaults write com.apple.finder ShowPathbar -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

echo "Dock settings"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock showhidden -bool true
killall Dock


