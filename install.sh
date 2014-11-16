#/bin/sh
DFD="$HOME/dotfiles"

# make sure we get loaded
line="\n\n# source dotfiles at the end\nexport DFD=\$HOME/dotfiles\n. \$DFD/index"
file=~/.bash_profile
if ! grep ". \$DFD/index" $file; then
	echo $line >> ~/.bash_profile
fi
exit
# backup if needed, and start using our vimrc
if [ -f "$HOME/.vimrc" ]; then
  mv -s $HOME/vimrc $HOME/.vimrc.bak
fi
ln -s $DFD/vimrc $HOME/.vimrc