" Prevent using escape.
inoremap jk <esc>

vnoremap ; :
nnoremap ; :
nnoremap <cr> o<esc>

" Laziness overload.
inoremap 0- ->
inoremap -= =>
nnoremap = <C-w>=

inoremap ()<space> ()<esc>i
inoremap ();<space> ();<esc>hi
inoremap {}<space> {}<esc>i
inoremap {} {}<esc>i
inoremap {}<cr> {<cr><cr>}<esc>ki<tab>
inoremap []; [];<esc>i
inoremap [];<cr> [];<esc>hi<cr><cr><esc>ki<tab>
inoremap []<space> []<esc>i

" Center the page when traversing.
nnoremap n nzz
nnoremap G Gzz

" Convert all tabs into spaces.
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>

" Horizontal Split
nnoremap <C-w>\| <C-W>vzz<C-w>l

" Vertical Split
nnoremap <C-w>- <C-W>szz<C-w>j
