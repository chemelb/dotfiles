DOTFILES_DIR=$DOTFILES_DIR/maximimum-awesome

# Install/update
(mkdir -p "$DOTFILES_DIR" && git clone https://github.com/square/maximum-awesome.git "$DOTFILES_DIR" && cd "$DOTFILES_DIR") || (cd "$DOTFILES_DIR" && git pull)

# Build
rake

# use vim/.vimrc.local
ln -sf "$DOTFILES_DIR/vim/.vimrc.local" ~/.vimrc.local
ln -sf "$DOTFILES_DIR/vim/.vimrc.bundle.local" ~/.vimrc.bundle.local
