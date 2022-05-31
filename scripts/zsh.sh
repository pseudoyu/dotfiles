#!/usr/bin/env bash

if test ! $(which zsh); then
  echo "Installing zsh..."
  brew install zsh
fi

DOTFILES=$HOME/.dotfiles
ZSH_CONFIG=$HOME

echo "Copying .zshrc Conf to $ZSH_CONFIG..."
cp -rf $DOTFILES/zsh/.* $ZSH_CONFIG