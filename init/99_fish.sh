# install fish shell
is_ubuntu && sudo apt-get install fish
is_osx && brew install fish

# install https://github.com/oh-my-fish/oh-my-fish
command -v fish >/dev/null 2>&1 && {
  sh -c "curl -L http://get.oh-my.fish | fish"
}
