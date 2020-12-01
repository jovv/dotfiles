
" vim configs
" inspired by and partially copied from:
"   https://gitlab.com/rwxrob/dotfiles/-/blob/master/common/vim/vimrc
"   https://github.com/mlavin/dotfiles/blob/master/vimrc
let skip_defaults_vim=1
set nocompatible

set showmode
set number
set ruler
set autoindent

set tabstop=4
set smartindent
set smarttab
set softtabstop=2
set shiftwidth=2

set nofixendofline

set expandtab

" no bracket matching
let g:loaded_matchparen=1
set noshowmatch

" no bkp or swap
set nobackup
set noswapfile
set nowritebackup

"set spell

" keep the terminal title updated
set laststatus=0
set icon

" highlight search hits
set hlsearch
set incsearch
set linebreak
map <silent> <leader><cr> :noh<cr>:redraw!<cr>

" faster scrolling
set ttyfast

" requires PLATFORM env variable set (in ~/.bashrc)
if $PLATFORM == 'mac'
  " required for mac delete to work
  set backspace=indent,eol,start
endif

" prevents truncated yanks, deletes, etc.
set viminfo='20,<1000,s1000

set background=dark

syntax enable

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  echo "Don't forget to GoInstallBinaries if you're doing Go dev."
endif

call plug#begin('~/.vim/vimplugins')

Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'tomasr/molokai'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme molokai

set colorcolumn=80,100

" golang
let g:go_fmt_fail_silently = 0 " let me out even with errors
let g:go_fmt_command = 'goimports' " autoupdate import
let g:go_fmt_autosave = 1
let g:go_gopls_enabled = 1

au FileType go nmap <leader>t :GoTest!<CR>
au FileType go nmap <leader>v :GoVet!<CR>
au FileType go nmap <leader>b :GoBuild!<CR>
au FileType go nmap <leader>i :GoInstall!<CR>
au FileType go nmap <leader>l :GoMetaLinter!<CR>

