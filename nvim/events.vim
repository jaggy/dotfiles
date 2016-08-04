"----------------------------------------------------------------------
" Syntax Highlighting
"----------------------------------------------------------------------
" autocmd BufWritePre * :%s/\s\+$//e                        " Remove excess white space
autocmd BufRead,BufNewFile *.twig set filetype=jinja      " Use the twig syntax highlighting
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby  " Use the ruby syntax highlighting
autocmd BufRead,BufNewFile *.blade.* set filetype=blade   " Use the blade syntax highlighting
autocmd BufRead,BufNewFile *.snip set filetype=neosnippet " Use the neosnippet syntax highlighting
autocmd BufRead,BufNewFile *.md set filetype=markdown     " Use markdown


autocmd BufWritePre * :%s/\s\+$//e                        " Remove trailing spaces on save.

""" Add phpspec functionality only on phpfiles
autocmd BufRead,BufNewFile *.php source ~/.dotfiles/nvim/scripts/phpspec.vim
autocmd BufRead,BufNewFile *.php source ~/.dotfiles/nvim/scripts/phpdependency.vim
autocmd BufRead,BufNewFile *.php source ~/.dotfiles/nvim/syntax/php.vim

autocmd BufNewFile,BufRead *.js UltiSnipsAddFiletypes javascript-chai

autocmd BufRead,BufNewFile *.vue set filetype=vue
autocmd BufNewFile,BufRead *.vue UltiSnipsAddFiletypes javascript
autocmd BufRead,BufNewFile *.tmux set filetype=tmux

"----------------------------------------------------------------------
" Snippets
"----------------------------------------------------------------------
autocmd BufNewFile,BufRead *.php UltiSnipsAddFiletypes php-laravel
autocmd BufNewFile,BufRead *.php UltiSnipsAddFiletypes php-phpunit

"----------------------------------------------------------------------
" Override Editor Config
"----------------------------------------------------------------------
autocmd BufNewFile,BufRead *.php source ~/.dotfiles/nvim/editor/php.vim
autocmd BufNewFile,BufRead *.js source ~/.dotfiles/nvim/editor/javascript.vim
autocmd BufNewFile,BufRead *.els source ~/.dotfiles/nvim/editor/elixir.vim


"----------------------------------------------------------------------
" Create the nested folders if it doesn't exist
"----------------------------------------------------------------------
"
" mkdir -p
autocmd BufWritePre * :silent !mkdir -p %:p:h
