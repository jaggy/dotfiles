"-----------------------------------
" Editor Configuration
"-----------------------------------
"

color peachpuff
syntax enable
highlight ColorColumn ctermbg=yellow
highlight Pmenu ctermbg=black ctermfg=white                     " Set the autocomplete color.

set directory=$HOME/.vim/swapfiles//                            " Custom swap file location.
set nowrap
set relativenumber
set number
set term=xterm-256color	                                        " Sets the Airline color
set laststatus=2                                                " Activate Airline
set tabstop=4                                                   " Use 4 as the tab width.
set shiftwidth=4
set expandtab                                                   " Tabs suck.
set colorcolumn=80,120                                          " Assign a margin.
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

