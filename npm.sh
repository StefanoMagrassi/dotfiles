#! /bin/bash

source ./_utils.sh

SOURCE=$(pwd)/config/npm
TARGET=~
FILES=(.npmrc)

ensure_and_make_link $SOURCE $TARGET ${FILES[@]}

# Install npm itselt as global package
npm i -g npm
	
# Install utility packages
npm i -g npm-check

