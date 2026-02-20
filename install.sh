#!/bin/bash

# Downloads vim if vim is not detected
if [ ! -d /usr/bin/vim ]; then
	echo "Downloading vim"
	sudo apt install vim -y
fi
# Clones the repo for Vundle if it is not detected
if [ ! -d "$HOME/.vim" ]; then
	echo "Downloading Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Copies .vimrc from vim-config to home if .vimrc is not in the home directory
if [ ! -f "$HOME/.vimrc" ]; then
	cp ./vim-config/.vimrc $HOME/.vimrc

	# Installs the plugins seen at the end of the file
	echo "Applying Plugins"
	echo "IF YOU ARE SEEING AN ERROR FOR NOT FINDING THE COLOR SCHEME, PRESS ENTER. IT WILL STILL APPLY."
	vim +PluginInstall +qall
	echo "Done"


else
	# If .vimrc already exists, this message will display.
	echo ".vimrc already exists. Run "rm ~/.vimrc" to remove the file and try the installer again"
fi