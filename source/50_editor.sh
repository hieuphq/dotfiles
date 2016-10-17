# Editing

# if [[ ! "$SSH_TTY" ]] && is_osx; then
#   export EDITOR='mvim'
#   export LESSEDIT='mvim ?lm+%lm -- %f'
# else
# fi
export EDITOR='vim'

export VISUAL="$EDITOR"
alias q="$EDITOR"
alias qv="q $DOTFILES/link/.{,g}vimrc +'cd $DOTFILES'"
alias qs="q $DOTFILES"
