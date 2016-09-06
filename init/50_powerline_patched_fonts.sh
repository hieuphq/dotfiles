# patched fonts for compatible with powerline & fish themes
# https://github.com/powerline/fonts
POWERLINE_PATCHED_FONTS=$HOME/src/github.com/powerline/fonts

mkdir -p $POWERLINE_PATCHED_FONTS
git clone https://github.com/powerline/fonts $POWERLINE_PATCHED_FONTS

# install patched fonts
$POWERLINE_PATCHED_FONTS/install.sh
