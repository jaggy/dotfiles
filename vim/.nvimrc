set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle'

let mapleader=","

source ~/.dotfiles/vim/plugins.vim
call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Control P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Configure the runtime, ignores and cache location.
" Also, set the we'll use `ag` if it exists
"

set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/vendor/*,*/node_modules/*,*/bower_components/*.*/storage/*
let g:ctrlp_cache_dir   = $HOME . '/.cache/ctrlp'
let g:ctrlp_show_hidden = 1

if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif




syntax enable
color peachpuff

set directory=$HOME/.vim/swapfiles//
set nowrap
set relativenumber
set number
set colorcolumn=80,120
set tabstop=4
set shiftwidth=4
set expandtab
set list
set backspace=indent,eol,start
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

" Keymappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap ; :
