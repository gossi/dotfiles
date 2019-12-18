# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup '/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

# Clear icon cache
alias reseticons 'sudo rm -rfv /Library/Caches/com.apple.iconservices.store; sudo find /private/var/folders/ \( -name com.apple.dock.iconcache -or -name com.apple.iconservices \) -exec rm -rfv {} \; ; sleep 3;sudo touch /Applications/* ; killall Dock; killall Finder'

# Reset "opening appplication .... for the first time"
alias resetappopen '/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -all local,system,user'

# Add spacer to dock
alias addspacer "defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}'; killall Dock"

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash 'sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash'

# Recursively delete `.DS_Store` files
alias cleanup 'find . -type f -name "*.DS_Store" -ls -delete'

# Show/hide hidden files in Finder
alias show 'defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder'
alias hide 'defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop 'defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias showdesktop 'defaults write com.apple.finder CreateDesktop -bool true && killall Finder'

# flush DNS
alias flushdns 'dscacheutil -flushcache; sudo killall -HUP mDNSResponder'