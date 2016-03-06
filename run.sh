#!/bin/sh
mkdir bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install CMake
pip install power-status
cp .vimrc ~/
vim README.md
./bundle/YouCompleteMe/install.py --clang-completer
