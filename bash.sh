#! /bin/bash

source ./_utils.sh

SOURCE=$(pwd)/config/bash
TARGET=~
FILES=(
  ".bash_aliases"
  ".bash_colors"
  ".bash_profile"
  ".bashrc"
  ".envvars"
  ".profile"
)

ensure_and_make_link $SOURCE $TARGET "${FILES[@]}"

