"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" Prevent using escape.
inoremap jk <esc>
vnoremap ; :
nnoremap ; :

" Create a split and move to that pane.
nnoremap <C-w>\| <C-W>vzz<C-w>l
nnoremap <C-w>- <C-W>szz<C-w>j

" Map enter to still add line breaks on normal mode.
nnoremap <cr> o<esc>

" Laziness overload.
inoremap 0- ->
inoremap -= =>
nnoremap = <C-w>=
inoremap [;w<cr> <esc>:w<cr>
nnoremap [;w<cr> <esc>:w<cr>
noremap  <C-s> <esc>:w<cr>

inoremap ()<space> ()<esc>i
inoremap ();<space> ();<esc>hi
inoremap {}<space> {}<esc>
inoremap {} {}<esc>i
inoremap {}<cr> {<cr><cr>}<esc>k$a
inoremap [];<space> [];<esc>hi
inoremap [];<cr> [];<esc>hi<cr><cr><esc>ki<tab>
inoremap []<space> []<esc>i
inoremap [[<tab> {!!<space>Form::<space>!!}<esc>bhi
imap {{<space> {{}}<esc>i<space><space><esc>i

" Center the page when traversing.
nnoremap n nzz
nnoremap G Gzz

" Convert all tabs into spaces.
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>

" Do the aligning for #, => and : in a non painful way.
vnoremap <leader><tab> :Tab/#<cr>:Tab/=><cr>:Tab/:<cr>:Tab/=<cr>

" Make @uses annotation
nnoremap <leader>z. 0i * @<esc>e<esc>as<esc>wi<tab><tab>\<esc>$x0j

" Tagbar
nnoremap <leader>tt :Tagbar<CR>
