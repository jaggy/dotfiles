"-----------------------------------
" Application Bootstrap
"-----------------------------------
"
" - Configure Vundle to work.
" - Load all the plugins.
" - Map the leader key.
"

set nocompatible
filetype off

let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

source ~/.dotfiles/vim/plugins.vim

call vundle#end()
filetype plugin indent on

