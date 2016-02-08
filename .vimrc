set expandtab                                                                   
set tabstop=4                                                                   
set shiftwidth=4                                                                
set softtabstop=4                                                               


set autoindent                                                                  
set smartindent                                                                 
set backspace=indent,eol,start                                                  
set ruler                                                                       


set nobackup                                                                    
set nowritebackup                                                               
set noswapfile                                                                  
set encoding=utf-8                                                              

set nocompatible                                                                
filetype on                                                                     

let &colorcolumn=join(range(81,999),",")                                        
let &colorcolumn="80,".join(range(400,999),",")                                 

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

set t_Co=256                                                                    
set background=dark                                                             
let g:solarized_termcolors=256                                                  
colorscheme solarized                                                           
"colorscheme monokai                                                            
"colorscheme molokai
