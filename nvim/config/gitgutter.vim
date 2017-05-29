" Disable the keymaps
let g:gitgutter_map_keys = 0

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified = '·'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '·-'

highlight GitGutterAdd          ctermbg=green  ctermfg=green
highlight GitGutterChange       ctermbg=yellow ctermfg=yellow
highlight GitGutterChangeDelete ctermbg=red ctermfg=red
highlight link GitGutterDelete GitGutterChangeDelete

