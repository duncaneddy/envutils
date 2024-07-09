
# Define commands to copy each of vimrc, zshenv, zshrc, and all
# files in the bin directory to the home directory.


# Define different call signatures for make
# make install
# make install VIMRC=1

.PHONY: aliases
aliases:
	cp aliases.sh ~/.aliases.sh

.PHONY: zsh
zsh:
	cp zshenv ~/.zshenv
	cp zshrc ~/.zshrc
	cp aliases ~/.aliases.sh

.PHONY: vim
vim:
	cp vimrc ~/.vimrc

.PHONY: all
all: zsh vim
	cp ssh_config ~/.ssh/config
