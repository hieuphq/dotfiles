# exit if node is not installed.
which node || return 1

packages=(
  eslint
  flow-bin
  pure-prompt
  svgo
)

function node_install_packages() {
  e_header "Installing Node packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    npm install -g $package
  done
}

node_install_packages

# add yarn binary folder to PATH
export PATH=$PATH:$(yarn global bin)
