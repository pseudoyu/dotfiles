#!/usr/bin/env bash

if test ! $(which git); then
  echo "Installing git..."
  brew install git
fi

DOTFILES=$HOME/.dotfiles
GIT_CONFIG=$HOME

echo "Copying .gitconfig and .gitignore Conf to $ZSH_CONFIG..."
cp -rf $DOTFILES/git/.* $GIT_CONFIG