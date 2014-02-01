syntax enable

set nu
set expandtab
set tabstop=2
set shiftwidth=2
set nowrap
set colorcolumn=81

set autoindent

" Coloring stuff
highlight ColorColumn  ctermbg=237
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

" Just in case we need the semi-colon. Just in case
noremap ;; ;

" Save with Control+S to lose one keystroke
inoremap <c-s> <Esc>:update<CR>

" Relative only when in focus
:au FocusLost * :set number
:au FocusGained * :set relativenumber

" Absolute when typing
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
