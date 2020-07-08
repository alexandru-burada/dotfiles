set number
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set wrap
set mouse=a
set hlsearch
set ignorecase
if has("syntax")
  syntax on
endif

let g:airline_theme='base16_mocha'

call plug#begin()
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plgu 'nvie/vim-flake8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chriskempson/base16-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" set background=dark
" let base16colorspace=256
" colorscheme base16-default-dark
" set -g default-terminal "screen-256color"
" set -ga terminal-override ",xterm-256color: Tc"

