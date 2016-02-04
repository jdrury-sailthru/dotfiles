set t_Co=256

set backspace=indent,eol,start
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set background=dark



set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8



set nocompatible              " be iMproved
filetype on



noremap ; :
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
imap <up> <Nop>
imap <down> <Nop>
imap <left> <Nop>
imap <right> <Nop>



syntax enable
colorscheme molokai
let g:molokai_original = 1
"let g:rehash256=1
