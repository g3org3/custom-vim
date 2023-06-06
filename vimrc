set nu
set ai
set tabstop=2 shiftwidth=2 expandtab
syntax on
set laststatus=2
set mouse=a
execute pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set listchars=tab:\|\ ,eol:¬
set list

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

let g:solarized_termcolors = 256

" JSX syntax highlight
let g:jsx_ext_required = 0

let g:ctrlp_custom_ignore='node_modules'

set encoding=utf8

 " Theme
syntax enable
set t_Co=256
colorscheme OceanicNext
"colorscheme PaperColor
set background=dark
" this is now deprecated
" let g:airline_theme='oceanicnext'

let base16colorspace=256

"colo base16-default-dark

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


