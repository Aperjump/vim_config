set encoding=utf-8
" line number
" vmap y :w!pbcopy<CR><CR>
" nmap yy: w!pbcopy<CR><CR>
" nmap p: r!pbpaste<CR><CR>
set nu
" line number and column number
set ruler
set showcmd

" ctag 
" set tags=./tags;,.tags
set tags=./tags;/;  
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-s> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set autochdir 
" can copy from vim to clipboard
set clipboard=unnamed

" show currentline
set cursorline

autocmd vimenter * NERDTree
let g:clang_library_path='/usr/lib/llvm-6.0/lib/libclang.so'
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

" change leader 
let mapleader=','
let g:mapleader=','
" pathogen.vim
" Any thing you wish to install can be extracted to ~/.vim/bundle
" execute pathogen#infect()

" plug-in managements
call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/asyncrun.vim'
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/YouCompleteMe'
Plug 'Kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'gilligan/vim-lldb'
Plug 'lfv89/vim-interestingwords'
Plug 'Lokaltog/vim-powerline'
Plug 'vhdirk/vim-cmake'
Plug 'rust-lang/rust.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
" end plug-in lists
call plug#end()

" vim-gutentags config
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'

" put all tag file in ~/.cache/tags directory
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" ctag config
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+1']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" asyncRunn config
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
nnoremap<F10> :call asyncrun#quickfix_toggle(6)<cr>

" YCM config
" python config
let g:ycm_python_binary_path = '/usr/bin/python3'
" C++ config
let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_confirm_extra_conf = 0
let g:ycm_rust_src_path= "~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap<C-a> :YcmCompleter FixIt<CR>


" powerline setting
set laststatus=2
set t_Co=256
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap f <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" nerd tree
nmap ,v :NERDTreeFind<cr>
nmap ,g :NERDTreeToggle<cr>

" tagbar config
nmap <F8> :TagbarToggle<CR>

" ctags
set tags=./.tags;,.tags
