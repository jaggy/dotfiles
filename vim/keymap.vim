" DISABLING THE CURSOR KEEEEYS!!!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Remap pane resizing
map - 5<C-w><
map + 5<C-w>>
map = <C-w>=


" Closing and opening things
inoremap jk <esc>
inoremap ()<space> ()<esc>i
inoremap ();<space> ();<esc>hi
inoremap {}<space> {}<esc>i
inoremap {} {}<esc>i
inoremap {}<cr> {<cr><cr>}<esc>ki<tab>
inoremap []; [];<esc>i
inoremap [];<cr> [];<esc>hi<cr><cr><esc>ki<tab>
inoremap []<space> []<esc>i
inoremap 0- ->
inoremap -= =>

" Center on page immediately on using search
nnoremap n nzz
nnoremap G Gzz

" Use the enter on normal mode
nnoremap <CR> o<esc>

" Spliiting the windows
nnoremap <C-w>\| <C-W>vzz<C-w>l
nnoremap <C-w>- <C-W>szz<C-w>j

" Remap semi-colon to colon
map ; :
map ;; :

" Nerd Tree Toggle
map <C-e> :NERDTreeToggle<CR>

" Tagbar
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>

" comment
nnoremap <leader>c/ :call pdv#DocumentWithSnip()<CR>

smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
imap <C-k> <Plug>(neosnippet_expand_or_jump)
