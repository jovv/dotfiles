let skip_defaults_vim=1
set nocompatible

set showmode
set number
set ruler
set autoindent

set tabstop=4
set smartindent
set smarttab

set nofixendofline

set expandtab

"set spell

" keep the terminal title updated
set laststatus=0
set icon

" faster scrolling
set ttyfast

set background=dark

syntax enable

call plug#begin('~/.vim/vimplugins')

"Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

call plug#end()

colorscheme molokai

set colorcolumn=80,100
