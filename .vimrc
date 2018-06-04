set encoding=utf-8

" line number
set nu
" line number and column number
set ruler
set showcmd

" can copy from vim to clipboard
set clipboard=unnamed,unnamedplus

" show currentline
set cursorline

" syntax highlight
syntax enable
syntax on

" vim has more supporting features than vi
" it's better to close compatible 
set nocompatible 

set nobackup

" support mouse 
set mouse=a

" indent config
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

" highlight search result
set hlsearch

set showmatch

set ruler
set novisualbell

" change color
let g:molokai_origin = 1
colorscheme molokai

" enable vim org mode
filetype plugin indent on

" maps
:nmap <Space> <PageDown>
:nmap <Down> :next<CR>
:nmap <UP> :prev<CR>
