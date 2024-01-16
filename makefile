.PHONY: all bash git npm vim terminator firefox

all: bash git npm vim terminator firefox

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

xfce:
	$(PWD)/xfce4.sh

