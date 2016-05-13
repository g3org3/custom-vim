## custom-vim


### Setup

#### Step 1: Install Pathogen
link to their repo - [vim-pathogen](https://github.com/tpope/vim-pathogen)
```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

#### Step 2
install dependencies
```sh
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
cd ~/.vim/colors && curl -O https://raw.githubusercontent.com/NLKNguyen/papercolor-theme/master/colors/PaperColor.vim
cd
```

#### Step 3
```sh
# ~/.vimrc

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
```
