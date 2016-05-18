# Define Golang version
GO_VERSION="1.6.2"
ARCH="amd64"
is_ubuntu && OS="linux"
is_osx && OS="darwin"

# Download Golang
echo "Download Golang $GO_VERSION.$OS-$ARCH"
curl -s https://storage.googleapis.com/golang/go$GO_VERSION.$OS-$ARCH.tar.gz | tar -C /usr/local -xz
unset -v GO_VERSION OS ARCH

# loads Golang environment
source $DOTFILES/source/50_golang.sh
