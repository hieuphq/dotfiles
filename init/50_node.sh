# Load nave- and npm-related functions.
source $DOTFILES/source/50_node.sh

# Install latest stable Node.js, set as default, install global npm modules.
nave_install stable

# Install nvm
# echo "Download and install NVM"
# git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # loads nvm script
