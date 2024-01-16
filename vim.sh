#! /bin/bash

source ./_utils.sh

SOURCE=$(pwd)/config/vim
TARGET=~
FILES=(.vimrc)

ensure_and_make_link $SOURCE $TARGET ${FILES[@]}

VUNDLE=$TARGET/.vim/bundle/Vundle.vim

if [ ! -d $VUNDLE ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE
fi

