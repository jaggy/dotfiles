"-----------------------------------
" Neo Complete
"-----------------------------------
"
" Initialize the plugin and set the key constraints.
"
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neosnippet#enable_snipmate_compatibility = 1              " Snipmate
let g:neosnippet#snippets_directory='~/.dotfiles/vim/snippets'  " Custom snippet path

"-----------------------------------
" Tab Completion
"-----------------------------------
"
function! s:check_back_space()
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr><NUL> pumvisible() ? "<C-n>" : "<C-Space>"

imap <expr><S-Tab> pumvisible() ? "<C-p>" :neocomplete#start_manual_complete()
imap <expr><Tab> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "<tab>"
