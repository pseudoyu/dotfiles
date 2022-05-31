#!/usr/bin/env bash

DOTFILES=$HOME/.dotfiles
RIME_CONFIG=$HOME/Library/Rime

echo "Copying Rime Conf to $RIME_CONFIG..."
cp -rf $DOTFILES/rime/* $RIME_CONFIG

if [ ! -d $RIME_CONFIG/plum ]; then
  echo "Install Rime Plum..."
  git clone --depth 1 https://github.com/rime/plum.git $RIME_CONFIG/plum
fi

$RIME_CONFIG/plum/rime-install double-pinyin