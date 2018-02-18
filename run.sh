#!/bin/sh
mkdir bundle
mkdir undo
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install CMake
pip3 install powerline-status
cp .vimrc ~/
vim README.md
./bundle/YouCompleteMe/install.py --clang-completer
