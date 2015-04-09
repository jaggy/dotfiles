" Prevent using escape.
inoremap jk <esc>
nnoremap ; :
nnoremap <cr> o<esc>

" Horizontal Split
nnoremap <C-w>\| <C-W>vzz<C-w>l

" Vertical Split
nnoremap <C-w>- <C-W>szz<C-w>j


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


