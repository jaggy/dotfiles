"-----------------------------------
" Control P
"-----------------------------------
"
" Configure the application to use AG to make the plugin
" _much much_ faster than the default grep search.
"

set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/vendor/*,*/node_modules/*,*/storage/*     " Things to ignore.
let g:ctrlp_cache_dir   = $HOME . '/.cache/ctrlp'           " Cache location
let g:ctrlp_show_hidden = 1

if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'   " Use AG for caching
endif
