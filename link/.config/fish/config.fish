set fish_complete_path /usr/local/share/fish/completions $fish_complete_path

alias ll "ls -lhF"

set -x GOPATH $HOME
set PATH /usr/local/opt/go/libexec/bin $HOME/bin /usr/local/bin $PATH
