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

# install Go code-analysis packages
go get -u -v golang.org/x/tools/cmd/goimports
go get -u -v github.com/nsf/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/golang/lint/golint
go get -u -v github.com/lukehoban/go-outline
go get -u -v sourcegraph.com/sqs/goreturns
go get -u -v golang.org/x/tools/cmd/gorename
go get -u -v github.com/tpng/gopkgs
go get -u -v github.com/newhook/go-symbols
go get -u -v golang.org/x/tools/cmd/guru
