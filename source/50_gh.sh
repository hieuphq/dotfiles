# https://github.com/dickeyxxx/gh
GH_DIR="$HOME/src/github.com/dickeyxxx/gh"

# clone gh if not already cloned
if [[ ! -d "$GH_DIR" ]]; then
    git clone https://github.com/dickeyxxx/gh.git $GH_DIR
fi

source $GH_DIR/bash/gh.bash
source $GH_DIR/completions/gh.bash
