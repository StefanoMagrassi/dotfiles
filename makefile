#all: bash eslint git npm jsbeautify vim tns csscomb stylelint
all: bash eslint git jsbeautify vim csscomb stylelint

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

jsbeautify:
	rm -f ~/.jsbeautifyrc
	ln -s $(PWD)/.jsbeautifyrc ~/.jsbeautifyrc

vim:
	rm -f ~/.vimrc
	ln -s $(PWD)/.vimrc ~/.vimrc

csscomb:
	rm -f ~/.csscomb.json
	ln -s $(PWD)/.csscomb.json ~/.csscomb.json

stylelint:
	rm -f ~/.stylelintrc
	ln -s $(PWD)/.stylelintrc ~/.stylelintrc

yarn:
	rm -f ~/.yarnrc
	cp ${PWD}/.yarnrc ~/.yarnrc
