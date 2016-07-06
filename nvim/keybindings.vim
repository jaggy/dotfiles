noremap <F1> <esc>:source ~/.config/nvim/init.vim<CR>:echo "Reloaded neovim config."<CR>
inoremap jk <esc>
nnoremap ; :
vnoremap ; :
nnoremap Q @q

" Map enter to still add line breaks on normal mode.
nnoremap <cr> o<esc>

""" Center the page when traversing.
nnoremap n nzz
nnoremap G Gzz


"----------------------------------------------------------------------
" Plugin Shortcuts
"----------------------------------------------------------------------
nnoremap <C-e> <esc>:NERDTreeToggle<CR>
nnoremap <C-p> <esc>:FZF<CR>
nnoremap <leader>tt :Tagbar<CR>
inoremap <leader>ci <esc>:call PhpInsertUse()<CR>a
nnoremap <leader>ce <esc>:call PhpExpandClass()<CR>
inoremap <leader>ce <esc>:call PhpExpandClass()<CR>a


"----------------------------------------------------------------------
" Panes
"----------------------------------------------------------------------
" Create a split and move to that pane.
nnoremap <C-w>\| <C-W>vzz<C-w>l
nnoremap <C-w>- <C-W>szz<C-w>j


"----------------------------------------------------------------------
" Laziness Shit
"----------------------------------------------------------------------
""" Fat and thin arrows.
inoremap 0- ->
inoremap -= =>

""" Equalize the pane widths.
nnoremap = <C-w>=

""" I usually end up holding the bracker longer when saving.
inoremap [;w<cr> <esc>:w<cr>
nnoremap [;w<cr> <esc>:w<cr>
noremap  <C-s> <esc>:w<cr>

" Convert all tabs into spaces.
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>

"----------------------------------------------------------------------
" Bracker Pairing
"----------------------------------------------------------------------
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

nnoremap <F3> :nohlsearch<CR>

"----------------------------------------------------------------------
" PHP Testing
"----------------------------------------------------------------------
nnoremap <leader>tw :call phpspec#create_function()<cr>
inoremap <leader>tw <esc>:call phpspec#create_function()<cr>

"----------------------------------------------------------------------
" Terminal
"----------------------------------------------------------------------
nnoremap <C-t> <esc>:terminal<CR>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
