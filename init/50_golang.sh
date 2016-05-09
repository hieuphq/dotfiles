# Define Golang version
VERSION="1.6.2"
ARCH="amd64"
is_ubuntu && OS="linux"
is_osx && OS="darwin"

# Download Golang
echo "Download Golang $VERSION.$OS-$ARCH"
curl -s https://storage.googleapis.com/golang/go$VERSION.$OS-$ARCH.tar.gz | tar -C /usr/local -xz
unset -v VERSION OS ARCH

# loads Golang environment
source $DOTFILES/source/50_golang.sh
