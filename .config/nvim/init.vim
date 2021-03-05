" test symlink
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'machakann/vim-sandwich'
Plug 'jacoborus/tender.vim'
Plug 'dikiaap/minimalist'
Plug 'chrisbra/Colorizer'
Plug 'pgavlin/pulumi.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
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
" color minimalist
color material
hi MatchParen cterm=none ctermbg=darkgrey ctermfg=white
" hi Normal guibg=NONE ctermbg=NONE
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
xmap <C-\> gc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


