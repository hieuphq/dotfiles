# install fish shell
is_ubuntu && sudo apt-get install fish

# install gh
mkdir -p $DOTFILES/link/.config/fish/functions
mkdir -p $DOTFILES/link/.config/fish/completions
for v in "gh" "gl" "bb"
do
  ln -sf $DOTFILES/vendor/gh/functions/$v.fish $DOTFILES/link/.config/fish/functions/$v.fish
done
ln -sf $DOTFILES/vendor/gh/completions/gh.fish $DOTFILES/link/.config/fish/completions/gh.fish

# install https://github.com/oh-my-fish/oh-my-fish
command -v fish >/dev/null 2>&1 && {
  sh -c "curl -L http://get.oh-my.fish | fish"
}
