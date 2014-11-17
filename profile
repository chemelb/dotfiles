export ENV=$DFD/bashrc

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  export SVN_EDITOR='vim'
else
  export EDITOR='atom -w'
  export SVN_EDITOR='atom -w'
fi

# node.js
export NODE_ENV=development

# brew cask
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

