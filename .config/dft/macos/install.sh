# Originals:
#  https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#  https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
#

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
# while true
#     sudo -n true
#     sleep 60
#     kill -0 "$fish_pid" || exit
# end 2>/dev/null &

###############################################################################
# General UI/UX #
###############################################################################

# Set computer name (as done via System Preferences ? Sharing)
sudo scutil --set ComputerName "Bembel"
sudo scutil --set HostName "Bembel"
sudo scutil --set LocalHostName "Bembel"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Bembel"

# Menu bar: hide remaining battery time (on pre-10.8); show percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Disable Spotlight
#sudo mdutil -a -i off

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Allow apps from anywhere in gatekeeper
sudo spctl --master-disable

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Disable the input source switching popup
# https://stackoverflow.com/questions/77248249/disable-macos-sonoma-text-insertion-point-cursor-caps-lock-indicator
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled 0

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input #
###############################################################################

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
#defaults write NSGlobalDomain KeyRepeat -int 0

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

###############################################################################
# Finder #
###############################################################################

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Use column view in all Finder windows by default
# Four-letter codes for the other view modes: `Nlsv`, `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Empty Trash securely by default
#defaults write com.apple.finder EmptyTrashSecurely -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

killall "Finder" >/dev/null 2>&1
