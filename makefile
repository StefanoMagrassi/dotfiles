.PHONY: all bash git npm vim terminator firefox

all: bash git npm vim terminator firefox

bash:
	rm -f ~/.bash_aliases
	ln -s $(PWD)/.bash_aliases ~/.bash_aliases
	rm -f ~/.bash_colors
	ln -s $(PWD)/.bash_colors ~/.bash_colors
	rm -f ~/.bash_profile
	ln -s $(PWD)/.bash_profile ~/.bash_profile
	rm -f ~/.bashrc
	ln -s $(PWD)/.bashrc ~/.bashrc
	rm -f ~/.envvars
	ln -s $(PWD)/.envvars ~/.envvars
	rm -f ~/.profile
	ln -s $(PWD)/.profile ~/.profile

git:
	rm -f ~/.gitconfig
	ln -s $(PWD)/.gitconfig ~/.gitconfig

npm:
	rm -f ~/.npmrc
	cp $(PWD)/.npmrc ~/.npmrc
	# Install npm itselt as global package
	npm i -g npm
	# Install utility packages
	npm i -g npm-check

vim:
	rm -f ~/.vimrc
	ln -s $(PWD)/.vimrc ~/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

terminator:
	rm -f ~/.config/terminator/config
	mkdir -p ~/.config/terminator
	ln -s $(PWD)/terminator/config ~/.config/terminator/config

firefox:
	$(PWD)/firefox-dev.sh

xfce:
	$(PWD)/xfce4.sh

