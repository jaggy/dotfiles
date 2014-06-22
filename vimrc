syntax enable

" Setting the leader key
let mapleader=","

" set background=dark
let g:airline_theme='tomorrow'

let g:airline#extensions#tabline#enabled = 1
set relativenumber
set encoding=utf-8

au BufRead,BufNewFile *.twig set filetype=htmljinja

" DISABLING THE CURSOR KEEEEYS!!!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

nnoremap n nzz
nnoremap <CR> o<esc>

nnoremap <C-w>\| <C-W>v
nnoremap <C-w>- <C-W>s

inoremap ()<space> ()<esc>i
inoremap ();<space> ();<esc>hi
inoremap {} {}<esc>i
inoremap {}<cr> {<cr><cr>}<esc>ki<tab>
inoremap []; [];<esc>i
inoremap []<space> []<esc>i
" inoremap ""; "";<esc>hi
" inoremap "": "":<esc>hi
" inoremap "" ""<esc>i
" inoremap ''; '';<esc>hi
" inoremap '' ''<esc>i
" inoremap <> <><esc>i
inoremap 0- ->
inoremap -= =>

" set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" set list

" Remap semi-colon to colon
map ; :

" Just in case we need the semi-colon. Just in case
noremap ;; ;

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
color torte

