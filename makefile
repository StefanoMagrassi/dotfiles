all: bash git npm vim terminator

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
	npm i -g http-server now npm-check

vim:
	rm -f ~/.vimrc
	ln -s $(PWD)/.vimrc ~/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

terminator:
	rm -f ~/.config/terminator/config
	cp $(PWD)/terminator.config ~/.config/terminator/config

xfce:
	rm -f ~/.config/xfce4/terminal/terminalrc
	cp $(PWD)/xfce4.terminal.terminalrc ~/.config/xfce4/terminal/terminalrc
	rm -f ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfc4-panel.xml
	cp $(PWD)/xfce4.xfconf.xfc4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfc4-panel.xml
	rm -f ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
	cp $(PWD)/xfce4.xfconf.thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml
	rm -f ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
	cp $(PWD)/xfce4.xfconf.xsettings.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml