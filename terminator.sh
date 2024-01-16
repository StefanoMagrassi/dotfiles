#! /bin/bash

source ./_utils.sh

SOURCE=$(pwd)/config/terminator
TARGET=~/.config/terminator
FILES=(config)

ensure_and_make_link $SOURCE $TARGET "${FILES[@]}"

