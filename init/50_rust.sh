which cargo > /dev/null || return 1

# install "exa" tool
RUSTFLAGS="-C target-cpu=native" cargo install --git git://github.com/ogham/exa
