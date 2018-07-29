# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Exit if Homebrew is not installed.
[[ ! "$(type -P brew)" ]] && e_error "Brew casks need Homebrew to install." && return 1

# Ensure the cask kegs are installed.
kegs=(caskroom/fonts)
brew_tap_kegs

# Recent Homebrew versions have built-in cask, so no installs needed.
# Exit if, for some reason, cask is not installed.
[[ ! "$(brew cask list)" ]] && e_error "Brew-cask failed to install." && return 1

# Hack to show the first-run brew-cask password prompt immediately.
brew cask info this-is-somewhat-annoying 2>/dev/null

# Homebrew casks
casks=(
  # Applications
  # 1password
  a-better-finder-rename
  # atom
  coconutbattery
  docker
  moom
  spotify
  # firefox
  # flux
  franz
  google-chrome
  google-drive
  # gotiengviet
  # gpgtools
  # hex-fiend
  # hyper
  insomniax
  iterm2
  jumpshare
  laverna
  # macvim
  messenger
  ngrok
  polymail
  skype
  slack
  # sourcetree
  teamviewer
  # vagrant
  # virtualbox
  visual-studio-code
  # vlc
  unrarx
  # Quick Look plugins
  betterzipql
  # qlcolorcode
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  quicknfo
  suspicious-package
  webpquicklook
  # Color pickers
  colorpicker-developer
  colorpicker-skalacolor
  # Fonts
  font-fira-code
  font-firacode-nerd-font
  font-go-mono
  font-hasklig
  font-hasklig-nerd-font
  font-meslo-nerd-font
  font-source-code-pro
  font-source-sans-pro
)

# Install Homebrew casks.
casks=($(setdiff "${casks[*]}" "$(brew cask list 2>/dev/null)"))
if (( ${#casks[@]} > 0 )); then
  e_header "Installing Homebrew casks: ${casks[*]}"
  for cask in "${casks[@]}"; do
    brew cask install $cask
  done
  brew cask cleanup
fi

# Work around colorPicker symlink issue.
# https://github.com/caskroom/homebrew-cask/issues/7004
cps=()
for f in ~/Library/ColorPickers/*.colorPicker; do
  [[ -L "$f" ]] && cps=("${cps[@]}" "$f")
done

if (( ${#cps[@]} > 0 )); then
  e_header "Fixing colorPicker symlinks"
  for f in "${cps[@]}"; do
    target="$(readlink "$f")"
    e_arrow "$(basename "$f")"
    rm "$f"
    cp -R "$target" ~/Library/ColorPickers/
  done
fi
