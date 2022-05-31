#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles
RIME_CONFIG=$HOME/Library/Rime
HAMMERSPOON_CONFIG=$HOME/.hammerspoon
TMUX_CONFIG=$HOME/.tmux.conf

# Update Git
echo "Update .gitconfig Conf..."
cp -rf $HOME/.gitconfig $DOTFILES/git

echo "Update .gitignore Conf..."
cp -rf $HOME/.gitignore_global $DOTFILES/git

# Update Vim
echo "Update .vimrc Conf..."
cp -rf $HOME/.vimrc $DOTFILES/vim

# Update Zsh
echo "Update .zshrc Conf..."
cp -rf $HOME/.zshrc $DOTFILES/zsh/.zshrc

# Update Rime
echo "Update Rime Conf..."
cp -rf $RIME_CONFIG/*.yaml $DOTFILES/rime

# Update Hammerspoon
echo "Update Hammerspoon Conf..."
cp -rf $HAMMERSPOON_CONFIG/* $DOTFILES/hammerspoon

# Update Tmux
echo "Update Tmux Conf..."
cp -rf $TMUX_CONFIG $DOTFILES/tmux