set nocompatible

execute pathogen#infect()
filetype plugin indent on

" ----- general settings ---------------
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

" ----- tab settings -------------------
set nowrap
set expandtab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

syntax on

set mouse=a

" ----- solarized settings ------------------
set background=dark
colorscheme solarized

" ----- airline settings ------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1

" ----- file tree -------------------------
let g:netrw_liststyle = 3
let g:netrw_winsize   = 15
let g:netrw_banner = 0

nmap <leader>d :Lex<CR>

" ----- syntastic settings -----------------
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- vim-gitgutter settings ---------------
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" ----- delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

