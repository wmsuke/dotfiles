#! /bin/bash
rm ~/.vim
rm ~/.vimrc
rm ~/.gvimrc
rm ~/.bash_profile

ln -s ~/app/dotfiles/vim           ~/.vim
ln -s ~/app/dotfiles/.vimrc        ~/.vimrc
ln -s ~/app/dotfiles/.gvimrc       ~/.gvimrc
ln -s ~/app/dotfiles/.bash_profile ~/.bash_profile
