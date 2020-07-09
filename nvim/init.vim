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

let g:airline_theme='base16_nord'
let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enabled = 0
colorscheme nord

call plug#begin()
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
" Plug 'nvie/vim-flake8'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" autocmd BufWritePost *.py call Flake8()

let g:syntastic_check_on_open = 1

" set background=dark
" let base16colorspace=256
" colorscheme base16-default-dark
" set -g default-terminal "screen-256color"
" set -ga terminal-override ",xterm-256color: Tc"

hi ErrorMsg NONE
hi Error NONE

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
