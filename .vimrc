" Use Vim settings, rather than Vi settings
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" set tab to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" update .vimrr
" map rr :source ~/.vimrc

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
"Plug 'vim-javascript'
"Plug 'valloric/youcompleteme'
Plug 'flazz/vim-colorschemes'
call plug#end()

colorscheme gruvbox
set background=dark

map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=0
