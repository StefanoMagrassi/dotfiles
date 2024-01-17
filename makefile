.PHONY: all bash git npm vim terminator firefox pics

all: bash git npm vim terminator firefox pics

bash:
	$(PWD)/bash.sh

git:
	$(PWD)/git.sh

npm:
	$(PWD)/npm.sh

vim:
	$(PWD)/vim.sh

terminator:
	$(PWD)/terminator.sh

firefox:
	$(PWD)/firefox-dev.sh

pics:
	$(PWD)/pics.sh

xfce:
	$(PWD)/xfce4.sh

