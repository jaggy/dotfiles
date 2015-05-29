nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

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
inoremap [[<tab> {!!<space>Form::<space>!!}<esc>bhi

" Center the page when traversing.
nnoremap n nzz
nnoremap G Gzz

" Convert all tabs into spaces.
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>

" Horizontal Split
nnoremap <C-w>\| <C-W>vzz<C-w>l

" Vertical Split
nnoremap <C-w>- <C-W>szz<C-w>j

" Make @uses annotation
nnoremap <leader>z. 0i * @<esc>e<esc>as<esc>wi<tab><tab>\<esc>$x0j

" Commentify
nnoremap <leader>c/ :call pdv#DocumentWithSnip()<CR>
