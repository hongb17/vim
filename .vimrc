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
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-scala'

Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
syntax on
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ts=4
set sw=4
" Be smart when using tabs ;)
set smarttab
set number
set ruler
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

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

let g:UltiSnipsExpandTrigger="<c-j>"

set laststatus=2

" Make the scala file save faster.
let g:syntastic_mode_map = { "mode": "active",
                           \ "active_filetypes": [],
                           \ "passive_filetypes": ["scala"] }
