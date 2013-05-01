syntax on
filetype on
filetype plugin on
set smarttab
set autoindent
set nocompatible
set incsearch
set undofile
set encoding=utf-8
set hlsearch
set number
set ruler
set ts=4
set sw=4
set expandtab

execute pathogen#infect()

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

nnoremap ; :
nnoremap <leader>w <C-w>v<C-w>l
nmap \l :setlocal number!<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"show red when exceed 120 chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%121v.\+/
set colorcolumn=120

cmap w!! %!sudo tee > /dev/null %

"Map NERDTree to \p
nmap <silent> <Leader>p :NERDTreeToggle<CR>
""Map TlistToggle to \t
"nmap <silent> <Leader>t :TlistToggle<CR>

"indent
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
