#! /bin/bash

source ./_utils.sh

SOURCE=$(pwd)/config/git
TARGET=~
FILES=(.gitconfig)

ensure_and_make_link $SOURCE $TARGET ${FILES[@]}

