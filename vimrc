syntax enable

set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap
set autoindent
set ruler
set wildmenu
set hlsearch
set incsearch
set laststatus=2
let g:airline_powerline_fonts = 1

" Coloring stuff
" highlight ColorColumn  ctermbg=237
highlight ColorColumn ctermbg=DarkMagenta
" set colorcolumn=81
call matchadd( 'ColorColumn', '\%86v', 100 )

" DISABLING THE CURSOR KEEEEYS!!!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

inoremap () (  )<esc>hi
inoremap {} {  }<esc>hi
inoremap [] [  ]<esc>hi
inoremap "" ""<esc>i
inoremap '' ''<esc>i
inoremap <> <><esc>i

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
autocmd FocusLost * set number
autocmd FocusGained * set relativenumber

" Absolute when typing
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|Vendor'

function! InsertTabWrapper()
  let col = col( "." ) - 1
  if !col || getline( "." )[ col - 1 ] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>
