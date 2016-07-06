"----------------------------------------------------------------------
" Syntax Highlighting
"----------------------------------------------------------------------
" autocmd BufWritePre * :%s/\s\+$//e                        " Remove excess white space
autocmd BufRead,BufNewFile *.twig set filetype=jinja      " Use the twig syntax highlighting
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby  " Use the ruby syntax highlighting
autocmd BufRead,BufNewFile *.blade.* set filetype=blade   " Use the blade syntax highlighting
autocmd BufRead,BufNewFile *.snip set filetype=neosnippet " Use the neosnippet syntax highlighting
autocmd BufRead,BufNewFile *.md set filetype=markdown     " Use markdown

"----------------------------------------------------------------------
" Snippets
"----------------------------------------------------------------------
autocmd BufNewFile,BufRead *.php UltiSnipsAddFiletypes php-laravel

