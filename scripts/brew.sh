#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\nUpgrade homebrew packages..."
brew update
brew upgrade

echo -e "\nInstalling homebrew packages..."
echo "=============================="

formulas=(
  wget
  git
  zsh
  tmux
  tree
  bat
)

for formula in "${formulas[@]}"; do
  if brew list "$formula" >/dev/null 2>&1; then
    echo "$formula already installed... skipping."
  else
    brew install $formula
  fi
done

echo -e "\nInstalling homebrew casks..."
echo "=============================="
casks=(
  squirrel
  hammerspoon
)

for cask in "${casks[@]}"; do
  if brew cask list "$cask" >/dev/null 2>&1; then
    echo "$cask already installed... skipping."
  else
    brew cask install $cask
  fi
done
