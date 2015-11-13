brew install zsh

grep "/usr/local/bin/zsh" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/zsh >> /private/etc/shells"
chsh -s /usr/local/bin/zsh

# don't use default config, as we provide from system folder
ln -sf $DOTFILES_DIR/runcom/.zshrc ~/.zshrc

# git without completions to allow zsh completion through hub
brew uninstall --force git && brew install git --without-completions
