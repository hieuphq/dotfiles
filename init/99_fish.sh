# install fish shell
is_ubuntu && sudo apt-get install fish

for v in "gh" "gl" "bb"
do
  ln -sf $DOTFILES/vendor/gh/functions/$v.fish $DOTFILES/link/.config/fish/functions/$v.fish
  ln -sf $DOTFILES/vendor/gh/completions/$v.fish $DOTFILES/link/.config/fish/completions/$v.fish
done

# install https://github.com/oh-my-fish/oh-my-fish
command -v fish >/dev/null 2>&1 && {
  sh -c "curl -L http://get.oh-my.fish | fish"
}
