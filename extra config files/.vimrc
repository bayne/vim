"colorscheme inkpot
set number
set background=dark
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" Loads pathogen module 
call pathogen#infect()

set nocompatible	

set showcmd

" Set the title of the vim window
set title
set titlestring=%t\ \(%{expand(\"%:p:h:t\")}\)

" Turn on incremental search
set incsearch

" Turn on syntax highlighting
syn on

" Set file encodings correctly
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif


" allow backspacing over everything in insert mode
set bs=2		

" always set autoindenting on
set ai			

" Remember last position
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif


" keep 100 lines of command line history
set history=100		

" show the cursor position all the time
set ruler		

if &term=="screen-256color"
     set t_Co=256
endif

vmap < <gv
vmap > >gv

map <C-o> :FufCoverageFile<Enter>
map <C-p> :FufLine<Enter>
nmap q <C-w>

autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%'')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufRead *.py nmap <F5> :!python %<CR>

autocmd BufRead *.java set makeprg=javac\ *.java 
autocmd BufRead *.java set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
autocmd BufRead *.java nmap <F5>java TestScanner t.tst<CR>
