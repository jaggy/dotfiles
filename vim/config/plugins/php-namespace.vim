set tags+=./tags,./.git/tags,tags,./vendor.tags,./.git/vendor.tags,vendor.tags

nnoremap <leader>ti <esc>:call PhpInsertUse()<CR>
inoremap <leader>ti <esc>:call PhpInsertUse()<CR>a
nnoremap <leader>te <esc>:call PhpExpandClass()<CR>
inoremap <leader>te <esc>:call PhpExpandClass()<CR>a
