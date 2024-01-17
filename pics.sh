#! /bin/bash

source ./_utils.sh

SOURCE=$(pwd)/pictures
TARGET=~/Pictures
FILES=(
  lamda.png
  mountain-wallpaper.jpg
  profile.jpg
  profile-square.jpg
)

ensure_and_make_link $SOURCE $TARGET ${FILES[@]}
