set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
" Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'powerline/powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

nnoremap ; :
nmap \l :setlocal number!<CR>
nmap \f gg=G
" Window split shortcuts
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Copy and paste
vmap <C-c> "+yi
vmap <C-c> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"show red when exceed 120 chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%121v.\+/
set colorcolumn=120

" In case forget sudo when editing
cmap w!! %!sudo tee > /dev/null %

"Map NERDTree to \p
nmap <silent> <Leader>p :NERDTreeToggle<CR>
