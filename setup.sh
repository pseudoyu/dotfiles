#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles

echo "Installing dotfiles..."

echo "Initializing submodule(s)..."
git submodule update --init --recursive

# Install zsh
if test ! $(which zsh); then
  echo "Installing zsh..."
  brew install zsh
fi

# zsh & oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# source $DOTFILES/scripts/zsh.sh

if [[ "$OSTYPE" == "darwin"* ]]; then
  source $DOTFILES/scripts/brew.sh
  source $DOTFILES/scripts/rime.sh
  source $DOTFILES/scripts/hammerspoon.sh
fi

source $DOTFILES/scripts/vim.sh
source $DOTFILES/scripts/git.sh

# backup, uncomment if you want
# source $DOTFILES/scripts/backup.sh

# update , uncomment if you want
# source $DOTFILES/scripts/update.sh