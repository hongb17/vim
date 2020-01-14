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
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'dense-analysis/ale'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'  " git wrapper
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"Plugin 'ambv/black'  " python formatter

"Plugin 'leafgarland/typescript-vim'
"Plugin 'derekwyatt/vim-scala'
"Plugin 'fatih/vim-go'
"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ts=2
set sw=2
" Be smart when using tabs ;)
set smarttab
set expandtab

set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

"Allow usage of mouse in iTerm
set ttyfast
set mouse=a

set number
nmap \l :setlocal number!<CR>

" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·

" Open new split panes to right and bottom, which feels more natural
" set splitbelow
set splitright

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

" Use tab to jump between blocks, because it's easier
nnoremap <tab> %
vnoremap <tab> %

" Undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

nnoremap ; :
nmap \f gg=G
" Window split shortcuts
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

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
let NERDTreeIgnore = ['\.pyc$']

let g:UltiSnipsExpandTrigger="<c-j>"

nnoremap <leader>j :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>

"set laststatus=2 " Always display the status line

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_check_on_open = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1

"let g:syntastic_debug = 1
" DO NOT compile java, scala file 
"let g:syntastic_mode_map = { "mode": "active",
"                           \ "active_filetypes": [],
"                           \ "passive_filetypes": ["scala", "java"] }
"
"let g:syntastic_python_flake8_exec = 'python3'
"let g:syntastic_python_flake8_args = ['-m', 'flake8']
"let g:syntastic_python_checkers=['flake8']
"let g:syntastic_python_flake8_post_args = "--ignore=C0111,E501,E241,W503"
"let g:syntastic_javascript_checkers = ['jsxhint']
"let g:jsx_ext_required = 0
"let g:black_linelength=119

nmap <leader>e :Errors<CR>

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['flake8'] }
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_python_flake8_options ="--ignore=E501,W504,W503,E129,E131,E125"
let g:ale_open_list = 1
