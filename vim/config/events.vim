autocmd BufWritePre * :%s/\s\+$//e                        " Remove excess white space
autocmd BufRead,BufNewFile *.twig set filetype=jinja      " Use the twig syntax highlighting
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby  " Use the ruby syntax highlighting
autocmd BufRead,BufNewFile *.blade.* set filetype=blade   " Use the blade syntax highlighting
autocmd BufRead,BufNewFile *.snip set filetype=neosnippet " Use the neosnippet syntax highlighting
autocmd BufWinEnter *.md set filetype=markdown            " Use markdown
autocmd BufWinEnter *.es6 set filetype=javascript         " Use javascript for ES6 files.
autocmd BufRead,BufNewFile *.haml.twig set filetype=haml
autocmd BufRead,BufNewFile /private/etc/apache2/vhosts/* set filetype=apache
autocmd BufRead,BufNewFile */.dotfiles/tmux/* set filetype=tmux
