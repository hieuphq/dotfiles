# install fish shell
is_ubuntu && sudo apt-get install fish

# install gh
for v in "gh" "gl" "bb"
do
  ln -sf ../../../../vendor/gh/functions/$v.fish $DOTFILES/link/.config/fish/functions/$v.fish
done
ln -sf ../../../../vendor/gh/completions/gh.fish $DOTFILES/link/.config/fish/completions/gh.fish

# make fish a "valid" shell
sudo sh -c "echo $(which fish) >> /etc/shells"

# install https://github.com/oh-my-fish/oh-my-fish
command -v fish >/dev/null 2>&1 && {
  sh -c "curl -L http://get.oh-my.fish | fish"
}
