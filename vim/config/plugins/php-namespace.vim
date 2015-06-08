set tags+=./tags,./.git/tags,tags

nnoremap <leader>ti <esc>:call PhpInsertUse()<CR>
inoremap <leader>ti <esc>:call PhpInsertUse()<CR>a
nnoremap <leader>te <esc>:call PhpExpandClass()<CR>
inoremap <leader>te <esc>:call PhpExpandClass()<CR>a
