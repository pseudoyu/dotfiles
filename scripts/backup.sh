#!/usr/bin/env bash

BACKUP_DIR=$HOME/.dotfiles_backup
RIME_CONFIG=$HOME/Library/Rime
HAMMERSPOON_CONFIG=$HOME/.hammerspoon
TMUX_CONFIG=$HOME/.tmux.conf

echo "Creating backup directory at $BACKUP_DIR"
mkdir -p $BACKUP_DIR

echo "Creating backup directory at $BACKUP_DIR/git"
mkdir -p $BACKUP_DIR/git

echo "Creating backup directory at $BACKUP_DIR/vim"
mkdir -p $BACKUP_DIR/vim

echo "Creating backup directory at $BACKUP_DIR/zsh"
mkdir -p $BACKUP_DIR/zsh

echo "Creating backup directory at $BACKUP_DIR/rime"
mkdir -p $BACKUP_DIR/rime

echo "Creating backup directory at $BACKUP_DIR/hammerspoon"
mkdir -p $BACKUP_DIR/hammerspoon

echo "Creating backup directory at $BACKUP_DIR/tmux"
mkdir -p $BACKUP_DIR/tmux

# Backup Git
echo "Backup .gitconfig Conf..."
cp -rf $HOME/.gitconfig $BACKUP_DIR/git

echo "Backup .gitignore Conf..."
cp -rf $HOME/.gitignore_global $BACKUP_DIR/git

# Backup Vim
echo "Backup .vimrc Conf..."
cp -rf $HOME/.vimrc $BACKUP_DIR/vim

# Backup Zsh
echo "Backup .zshrc Conf..."
cp -rf $HOME/.zshrc $BACKUP_DIR/zsh

# Backup Rime
echo "Backup Rime Conf..."
cp -rf $RIME_CONFIG/*.yaml $BACKUP_DIR/rime

# Backup Hammerspoon
echo "Backup Hammerspoon Conf..."
cp -rf $HAMMERSPOON_CONFIG/* $BACKUP_DIR/hammerspoon

# Backup Tmux
echo "Backup Tmux Conf..."
cp -rf $TMUX_CONFIG $BACKUP_DIR/tmux