nnoremap <leader>r <esc>:source ~/.config/nvim/init.vim<CR>:echo "Reloaded neovim config."<CR>
inoremap jk <esc>
nnoremap ; :
vnoremap ; :
nnoremap Q @q
inoremap ;; ::

" Map enter to still add line breaks on normal mode.
nnoremap <cr> o<esc>

""" Center the page when traversing.
nnoremap n nzz
nnoremap G Gzz

inoremap <C-g> <esc>

"----------------------------------------------------------------------
" Plugin Shortcuts
"----------------------------------------------------------------------
nnoremap <C-e> <esc>:NERDTreeToggle<CR>
nnoremap <leader><space> <esc>:silent call fzf#run({'source': 'ag -g "" --ignore-case --hidden', 'sink': 'e', 'down': '40%'})<CR>
nnoremap <leader>t <esc>:silent call fzf#run({'source': 'ag --skip-vcs-ignores -g "" --ignore-case --hidden', 'sink': 'e', 'down': '40%'})<CR>
nnoremap <leader>tt :Tagbar<CR>
inoremap <leader>ci <esc>:call PhpInsertUse()<CR>a
nnoremap <leader>ce <esc>:call PhpExpandClass()<CR>
inoremap <leader>ce <esc>:call PhpExpandClass()<CR>a
inoremap <leader>tw <esc>:call phpspec#create_function()<cr>
nnoremap <leader>tw <esc>:call phpspec#create_function()<cr>
nnoremap <leader>da <esc>:call phpdependency#add()<cr>
inoremap <leader>da <esc>:call phpdependency#add()<cr>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


"----------------------------------------------------------------------
" Panes
"----------------------------------------------------------------------
" Create a split and move to that pane.
nnoremap <C-w>\| <C-W>vzz
nnoremap <C-w>- <C-W>szz


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

""" Convert all tabs into spaces.
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>

""" Add a new file from the current directory
""" Courtesy of Jeffery Way: https://gist.github.com/JeffreyWay/6753834
nnoremap <leader>n :edit %:p:h/

"----------------------------------------------------------------------
" Bracker Pairing
"----------------------------------------------------------------------
" inoremap ()<space> ()<esc>i
" inoremap ();<space> ();<esc>hi
" inoremap {}<space> {}<esc>i
" inoremap @{<space> @{ }<esc>F{a<space>
" inoremap {}<cr> {<cr><cr>}<esc>k$a
" inoremap [];<space> [];<esc>hi
" inoremap [];<cr> [];<esc>hi<cr><cr><esc>ki<tab>
" inoremap []<space> []<esc>i
" inoremap [[<tab> {!!<space>Form::<space>!!}<esc>bhi
" inoremap {{<space> {{}}<esc>hi<space><space><esc>i

nnoremap <leader>3 :nohlsearch<CR>
"----------------------------------------------------------------------
" Terminal
"----------------------------------------------------------------------
" nnoremap <C-t> <esc>:terminal<CR>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
