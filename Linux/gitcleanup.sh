#!/bin/bash
# Git Clean up script to ensure symlinks are removed before commit
#
#
DIFF1=$(diff ~/github/dev_lunchbox/Linux/vim/.vimrc ~/.vimrc)
DIFF2=$(diff ~/github/dev_lunchbox/Linux/bash/.bashrc ~/.bashrc)
DIFF3=$(diff ~/github/dev_lunchbox/Linux/tmux.conf ~/.tmux.conf)
if [ "$DIFF1" != "" ]
	then	
		cp ~/.vimrc ~/github/dev_lunchbox/Linux/vim/.vimrc
		unlink ~/github/dev_lunchbox/Linux/vim/vimrc-link
fi

if [ "$DIFF2" != "" ]
	then	
		cp ~/.bashrc ~/github/dev_lunchbox/Linux/bash/.bashrc
		unlink ~/github/dev_lunchbox/Linux/bash/bashrc-link
fi
if [ "$DIFF3" != "" ]
	then	
		cp ~/.tmux.conf ~/github/dev_lunchbox/Linux
		unlink ~/github/dev_lunchbox/Linux/tmux-link
fi

if [ "$1" == '-f' ]
then
		unlink ~/github/dev_lunchbox/Linux/vim/vimrc-link
		unlink ~/github/dev_lunchbox/Linux/bash/bashrc-link
		unlink ~/github/dev_lunchbox/Linux/tmux-link
	fi