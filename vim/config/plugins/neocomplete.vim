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

"-----------------------------------
" Tab Completion
"-----------------------------------
"
function! s:check_back_space()
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr><TAB>  pumvisible() ? "<C-n>" :
        \ <sid>check_back_space() ? "<TAB>" :
        \ neocomplete#start_manual_complete()
inoremap <expr><S-Tab>  pumvisible() ? "<C-p>" :neocomplete#start_manual_complete()


