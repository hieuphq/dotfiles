# Define Golang version
GO_VERSION="1.6.3"
ARCH="amd64"
is_ubuntu && OS="linux"
is_osx && OS="darwin"

echo "Clean up previously installed Go version"
sudo rm -rf /usr/local/go/*

GO_URL="https://storage.googleapis.com/golang/go$GO_VERSION.$OS-$ARCH.tar.gz"

# Download Golang
echo "Install Go $GO_VERSION.$OS-$ARCH -- $GO_URL"
sudo bash -c "curl -s $GO_URL | tar -C /usr/local -xz"

unset -v GO_VERSION GO_URL OS ARCH

# loads Golang environment
source $DOTFILES/source/50_golang.sh

# install Golang packages
go get golang.org/x/tools/cmd/goimports
