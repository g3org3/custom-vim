" basics
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set mouse=a

" source the current rc file
set exrc
set relativenumber
set nu
set nohlsearch
set hidden

set incsearch
set termguicolors
set scrolloff=12
set signcolumn=yes
set colorcolumn=100

set listchars=tab:\|\ ,eol:¬
let mapleader = "\<Space>"

" Shorcuts
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>rc :tabe ~/.config/nvim/init.vim<CR>
nnoremap <C-t> :tabe<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-j> :tabn<CR>

" Give more space for displaying messages.
set cmdheight=2

" Install Plugins
call plug#begin('~/.vim/pluged')
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' "https://github.com/BurntSushi/ripgrep#installation
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Setup Plugins
colo gruvbox

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" NvimTree
lua require'nvim-tree'.setup()
nnoremap <C-l> :NvimTreeToggle<cr>

" Gitsigns
lua require'gitsigns'.setup()
nnoremap <leader>g :Gitsigns toggle_numhl<cr>:Gitsigns toggle_signs<cr>:Gitsigns toggle_current_line_blame<cr>
nnoremap <leader>k :Gitsigns preview_hunk<cr>
nnoremap <leader>u :Gitsigns reset_hunk<cr>

" Fugitive
nnoremap <leader>fl :Gclog<cr>

" Eslint autofix
" nnoremap <leader>i :CocInstall coc-eslint coc-json coc-tsserver<cr>
" nnoremap <leader>e :CocCommand eslint.executeAutofix<cr>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

