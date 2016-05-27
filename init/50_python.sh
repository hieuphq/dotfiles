# Check out pyenv
echo "Install Pyenv"
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# Load pyenv environment
source $DOTFILES/source/50_python.sh
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Restart your shell so the path changes take effect
# exec $SHELL
