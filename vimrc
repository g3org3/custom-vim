set nu
set ai
set tabstop=4
set background=dark
set laststatus=2
set mouse=a

syntax on
filetype plugin indent on
color PaperColor
execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim

let mapleader = "\<Space>"
nnoremap <leader>rv :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
nnoremap <C-l> :NERDTreeToggle<CR>
nnoremap <C-t> :tabe<bar>:NERDTree<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>qq :q<CR>:q<CR>
nnoremap <leader>html :set syntax=html<CR>
nnoremap <leader>js :set syntax=javascript<CR>
nnoremap <leader>rc :e ~/.vimrc<CR>
nnoremap <leader>x :x<CR>
nnoremap <C-i> :tabn<CR>

let g:airline_powerline_fonts = 1
let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'