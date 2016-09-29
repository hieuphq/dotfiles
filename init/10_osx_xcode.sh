# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Some tools look for XCode, even though they don't need it.
# https://github.com/joyent/node/issues/3681
# https://github.com/mxcl/homebrew/issues/10245
if [[ ! -d "$('xcode-select' -print-path 2>/dev/null)" ]]; then
  sudo xcode-select -switch /usr/bin
fi

# Disable trackpad pinch-to-zoom
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -bool false

# Enable 3-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1

# Force Finder shows hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# Disable the Character Accent Menu
# http://osxdaily.com/2011/08/04/enable-key-repeat-mac-os-x-lion
defaults write -g ApplePressAndHoldEnabled -bool false
