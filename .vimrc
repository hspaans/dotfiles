set nocompatible
set encoding=utf-8

filetype indent plugin on

"syntax on
filetype on

set cc=80

set hidden
set wildmenu
set showcmd
set hlsearch

set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent

set ruler
set laststatus=2
set confirm
set visualbell

set number

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smarttab

set ai "Auto indent
set si "Smart indent
set nowrap "Wrap lines

set splitbelow
set splitright

map Y y$
nnoremap <C-L> :nohl<CR><C-L>

" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType python setl ofu=pythoncomplete#Comple

au BufNewFile,BufRead *.py,*.js,*.ts,*.md
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.css,*.scss,*.json,*.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
