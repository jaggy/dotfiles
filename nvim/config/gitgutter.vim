" Disable the keymaps
let g:gitgutter_map_keys = 0

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified = '·'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '·'

highlight GitGutterAdd          guibg=#b5bd68 guifg=#b5bd68
highlight GitGutterChange       guibg=#f0c674 guifg=#f0c674
highlight GitGutterChangeDelete guibg=#cc6666 guifg=#cc6666
highlight link GitGutterDelete GitGutterChangeDelete

