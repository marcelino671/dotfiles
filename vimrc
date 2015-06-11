" Marcelino Linux vimrc

" Plugins
" =======

" Pathogen plugin installer.
execute pathogen#infect()

set nocompatible
set encoding=utf-8
set gcr=a:blinkon0      " Disable cusor blink

" Appearance
" ==========

syntax on
syntax enable
set noshowmode
colorscheme molokai
set background=dark
let g:airline_powerline_fonts=1 " Airline Font
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set t_Co=256
au GUIEnter * simalt ~x
hi Normal ctermbg=NONE
set toolbar="none"      " hide tollbar in gui version

" Indentation and Display
" =======================

set cindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set nowrap

" General Config
" ==============

set backspace=indent,eol,start " allow backspacing in insert mode
set history=100		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch	" Switch syntax highlighting when the terminal has colors
set autoindent		" always set autoindenting on
set noswapfile
set laststatus=2
filetype plugin indent on
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Themes
" ======

" Scrolling
" =========

set scrolloff=10
set sidescrolloff=15
set sidescroll=1

" Plugins Settings
" ================

" Airline
let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_max_diagnostics_to_display = 10
let g:ycm_key_list_select_completion = ['<c-n>']
let g:ycm_key_list_previous_completion = ['<c-p>']
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
set completeopt-=preview

" UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnips#ExpandSnippetOrJump="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Add file types
let g:UltiSnipsAddFiletypes="php.html"

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
