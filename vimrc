""" VUNDLE

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""" VUNDLE




""" Load all files needed

" Load all the plugins
if filereadable(glob("~/.vimrc.plugins"))
	source ~/.vimrc.plugins
endif

" Keymaps
if filereadable(glob('~/.vimrc.keymap'))
	source ~/.vimrc.keymap
endif

""" End file laoding





let mapleader=","

syntax enable
color torte

set relativenumber " Relative Line numbers
set encoding=utf-8 " Always UTF-8
set t_Co=256 " Set 256 color terminal

" Show invisible characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list




autocmd BufWritePre * :%s/\s\+$//e " Remove excess white space
au BufRead,BufNewFile *.twig set filetype=htmljinja " Use the twig syntax highlighting





""" AIRLINE
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
""" AIRLINE
