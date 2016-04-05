# Python & Ruby packages install without sudo
pip() {
  pip_exec=`which pip`
  # also make sure venv is NOT activated
  if [ -z "$VIRTUAL_ENV" ] && [ "$1" = "install" -o "$1" = "bundle" ]; then
    cmd="$1"
    shift
    $pip_exec $cmd --user "$@"
    # echo "--user"
  else
    $pip_exec "$@"
  fi
  # echo $pip_exec
}

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
