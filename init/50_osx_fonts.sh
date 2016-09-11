# OSX-only stuff. Abort if not OSX.
is_osx || return 1

# Copy fonts
{
  pushd $DOTFILES/conf/osx/fonts/; setdiffA=(*); popd
  pushd ~/Library/Fonts/; setdiffB=(*); popd
  setdiff
} >/dev/null

if (( ${#setdiffC[@]} > 0 )); then
  e_header "Copying fonts (${#setdiffC[@]})"
  for f in "${setdiffC[@]}"; do
    e_arrow "$f"
    cp "$DOTFILES/conf/osx/fonts/$f" ~/Library/Fonts/
  done
fi

# Download nerd font
# https://github.com/ryanoasis/nerd-fonts#font-installation
curl -fLo "$HOME/Library/Fonts/Droid Sans Mono for Powerline Nerd Font Complete.otf" \
  https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
