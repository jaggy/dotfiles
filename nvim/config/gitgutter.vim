" Disable the keymaps
let g:gitgutter_map_keys = 0

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified = '·'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '·-'

highlight GitGutterAdd          ctermbg=green ctermfg=green    guibg=#87d787 guifg=#87d787
highlight GitGutterChange       ctermbg=yellow ctermfg=yellow  guibg=#fbd75f guifg=#fbd75f
highlight GitGutterChangeDelete ctermbg=red ctermfg=red        guibg=#fb7761 guifg=#fb7761
highlight link GitGutterDelete GitGutterChangeDelete

" highlight GitGutterAdd          ctermbg=bg ctermfg=green
" highlight GitGutterChange       ctermbg=bg ctermfg=yellow
" highlight GitGutterChangeDelete ctermbg=bg ctermfg=red
" highlight link GitGutterDelete GitGutterChangeDelete
