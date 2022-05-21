set nocompatible

filetype indent plugin on

syntax on

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

map Y y$
nnoremap <C-L> :nohl<CR><C-L>

" F3: Toggle list (display unprintable characters).
nnoremap <F3> :set list!<CR>

