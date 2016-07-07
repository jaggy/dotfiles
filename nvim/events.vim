"----------------------------------------------------------------------
" Syntax Highlighting
"----------------------------------------------------------------------
" autocmd BufWritePre * :%s/\s\+$//e                        " Remove excess white space
autocmd BufRead,BufNewFile *.twig set filetype=jinja      " Use the twig syntax highlighting
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby  " Use the ruby syntax highlighting
autocmd BufRead,BufNewFile *.blade.* set filetype=blade   " Use the blade syntax highlighting
autocmd BufRead,BufNewFile *.snip set filetype=neosnippet " Use the neosnippet syntax highlighting
autocmd BufRead,BufNewFile *.md set filetype=markdown     " Use markdown

""" Add phpspec functionality only on phpfiles
autocmd BufRead,BufNewFile *.php source ~/.dotfiles/nvim/scripts/phpspec.vim
autocmd BufRead,BufNewFile *.php source ~/.dotfiles/nvim/scripts/php-add-dependency.vim

"----------------------------------------------------------------------
" Snippets
"----------------------------------------------------------------------
autocmd BufNewFile,BufRead *.php UltiSnipsAddFiletypes php-laravel
autocmd BufNewFile,BufRead tests/**/*.php UltiSnipsAddFiletypes php-phpunit

