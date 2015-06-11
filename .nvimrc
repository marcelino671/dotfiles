" Marcelino Linux NeoVimrc

" Plugins
" =======

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'

" Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" Colorschemes
Plug 'tomasr/molokai' " My default theme
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'

call plug#end()

" General Config
" ==============

set noswapfile

" Appearance
" ==========


" Themes
" ======
set t_Co=256
colorscheme molokai
set background=dark

" Indentation and Display
" =======================

set number " show line number
set wrap linebreak nolist " wrap text view

" Scrolling
" =========

set scrolloff=10
set sidescrolloff=15
set sidescroll=1
