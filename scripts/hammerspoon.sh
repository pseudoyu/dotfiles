#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles
HAMMERSPOON_CONFIG=$HOME/.hammerspoon

echo -e "\nInstalling lua..."
brew install lua
brew install luarock

echo -e "\nInstalling moonscript..."
luarocks install moonscript
luarocks install lodash
luarocks install loadall

echo "Copying hammerspoon Scripts to $ZSH_CONFIG..."
cp -rf $DOTFILES/hammerspoon/* $HAMMERSPOON_CONFIG