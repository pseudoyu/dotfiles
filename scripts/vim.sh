#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles
VIM_CONFIG=$HOME/.vim

echo "Downloading vim-plug to $VIM_CONFIG..."
curl -fLo $VIM_CONFIG/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copying .vimrc Conf to $VIM_CONFIG..."
cp -rf $DOTFILES/vim/.vimrc $VIM_CONFIG