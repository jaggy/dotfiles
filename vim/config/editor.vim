"-----------------------------------
" Editor Configuration
"-----------------------------------
"
set directory=$HOME/.vim/swapfiles//  " Custom swap file location.
set nowrap
set relativenumber
set number
set autoread
set term=xterm-256color	              " Sets the Airline color
set laststatus=2                      " Activate Airline
set tabstop=4                         " Use 4 as the tab width.
set shiftwidth=4
set expandtab                         " Tabs suck.
set colorcolumn=80,120                " Assign a column limit.
set list
set cursorline                        " Show the cu
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

color torte
syntax enable

" Possbile colors:
" - Dark Teal: 23
" - Black: 16
" - Grey: 59
" - Dark Grey: 238
highlight CursorLine         ctermbg=238 cterm=NONE
highlight CursorLineNr       ctermbg=238 ctermfg=yellow
highlight ColorColumn        ctermbg=238
" Autocomplete color.
highlight Pmenu              ctermbg=black ctermfg=white
highlight LineNr             ctermfg=grey
highlight Special            ctermfg=4
highlight NonText            ctermfg=bg
highlight phpStringDelimiter ctermfg=red
highlight phpStringSingle    ctermfg=red
highlight phpStringDouble    ctermfg=red

" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
