all: bash eslint git vim yarn

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

eslint:
	rm -f ~/.eslintrc
	ln -s $(PWD)/.eslintrc ~/.eslintrc

git:
	rm -f ~/.gitconfig
	ln -s $(PWD)/.gitconfig ~/.gitconfig

npm:
	rm -f ~/.npmrc
	cp $(PWD)/.npmrc ~/.npmrc

vim:
	rm -f ~/.vimrc
	ln -s $(PWD)/.vimrc ~/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

yarn:
	rm -f ~/.yarnrc
	cp ${PWD}/.yarnrc ~/.yarnrc
