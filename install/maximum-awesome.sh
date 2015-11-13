BUNDLE_DIR=$BUNDLE_DIR/maximimum-awesome

# Install/update
(mkdir -p "$BUNDLE_DIR" && git clone https://github.com/square/maximum-awesome.git "$BUNDLE_DIR" && cd "$BUNDLE_DIR") || (cd "$BUNDLE_DIR" && git pull)

# Build
rake

# use system/.vimrc.local
ln -sf $BUNDLE_DIR/system/.vimrc.local ~/.vimrc.local
