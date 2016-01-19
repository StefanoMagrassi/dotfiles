all: bash eslint git jsbeautify vim tns

bash:
	rm -f ~/.bash_aliases
	ln -s $(PWD)/.bash_aliases ~/.bash_aliases
	rm -f ~/.bash_colors
	ln -s $(PWD)/.bash_colors ~/.bash_colors
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

jsbeautify:
	rm -f ~/.jsbeautifyrc
	ln -s $(PWD)/.jsbeautifyrc ~/.jsbeautifyrc

vim:
	rm -f ~/.vimrc
	ln -s $(PWD)/.vimrc ~/.vimrc

tns:
	rm -f ~/.tnsrc
	ln -s $(PWD)/.tnsrc ~/.tnsrc
