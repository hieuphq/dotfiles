# # Python & Ruby packages install without sudo
# pip() {
#   pip_exec=`which pip`
#   # also make sure venv is NOT activated
#   if [ -z "$VIRTUAL_ENV" ] && [ "$1" = "install" -o "$1" = "bundle" ]; then
#     cmd="$1"
#     shift
#     $pip_exec $cmd --user "$@"
#     # echo "--user"
#   else
#     $pip_exec "$@"
#   fi
#   # echo $pip_exec
# }

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# remove all pip packages
# http://stackoverflow.com/questions/11248073/what-is-the-easiest-way-to-remove-all-packages-installed-by-pip
# pip freeze | grep -v "^-e" | xargs pip uninstall -y
