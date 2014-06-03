
syntax enable

" Setting the leader key
let mapleader=","

set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
highlight Search ctermbg=489
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

nnoremap n nzz
nnoremap <CR> o<esc>

nnoremap <leader><space> /\s<CR> :set hlsearch! hlsearch?<CR>

inoremap ()<space> ()<esc>i
inoremap ();<space> ();<esc>hi
inoremap {} {}<esc>i
inoremap {}<cr> {<cr><cr>}<esc>ki<tab>
inoremap []; [];<esc>i
inoremap []<space> []<esc>i
inoremap ""; "";<esc>hi
inoremap "": "":<esc>hi
inoremap "" ""<esc>i
inoremap ''; '';<esc>hi
inoremap '' ''<esc>i
inoremap <> <><esc>i
inoremap 0- ->


set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" Remap semi-colon to colon
map ; :

" Just in case we need the semi-colon. Just in case
noremap ;; ;

" Save with Control+S to lose one keystroke
inoremap <C-s> <Esc>:w<CR>
noremap <C-s> :w<CR>

function! InsertTabWrapper()
  let col = col( "." ) - 1
  if !col || getline( "." )[ col - 1 ] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufWritePre * :%s/\s\+$//e

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
