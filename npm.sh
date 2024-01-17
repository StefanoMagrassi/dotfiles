#! /bin/bash

rm -f ~/.npmrc

cp $(pwd)/config/npm/.npmrc ~/

# Install npm itselt as global package
npm i -g npm
	
# Install utility packages
npm i -g npm-check

