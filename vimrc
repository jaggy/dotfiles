syntax enable

set nu
set expandtab
set tabstop=2
set shiftwidth=2
set nowrap

set autoindent

" highlight ColorColumn ctermbg=DarkMagenta
" set colorcolumn=81
" call matchadd( 'ColorColumn', '\%86v', 100 )

" DISABLING THE CURSOR KEEEEYS!!!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Setting the leader key
let mapleader=","

" Pathogen infect
execute pathogen#infect()

" Runtime Shit
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Remap semi-colon to colon
map ; :
noremap ;; ;

inoremap <c-s> <Esc>:update<CR>
