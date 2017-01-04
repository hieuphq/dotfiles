# exit if node is not installed.
which node || return 1

packages=(
  svgo
  pure-prompt
)

function node_install_packages() {
  e_header "Installing Node packages: ${packages[*]}"
  for package in "${packages[@]}"; do
    npm install -g $package
  done
}

node_install_packages
