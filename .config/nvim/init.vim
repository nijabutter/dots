" test symlink
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'frazrepo/vim-rainbow'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'chrisbra/Colorizer'
Plug 'tpope/vim-commentary'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'Yggdroot/indentLine'

call plug#end()
filetype plugin on
map <C-a> :NERDTreeToggle<CR>
map <C-s> :w<CR>

syntax enable
filetype on
set number
set ruler
set wrap
set hlsearch
set incsearch
set smarttab
set smartcase
set ignorecase
set cindent
set expandtab
set autoindent
set showcmd
set tabstop=4
set softtabstop=0
set shiftwidth=4
set nohlsearch

color material

hi MatchParen cterm=bold ctermbg=darkgrey ctermfg=white
let g:rainbow_active = 1
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ ]
command! -nargs=0 Prettier :CocCommand prettier.formatFile
set hidden
set cmdheight=2
set updatetime=300
let mapleader = " "
map <C-\> gcc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
