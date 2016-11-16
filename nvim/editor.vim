set number                  " Add line numbers
set relativenumber          " Add relative numbers second to make the current line the line number.
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab               " I don't like tabs. Suck it Richard.
set colorcolumn=80,120      " Add rulers
set cursorline              " Highlight the current line.
set showcmd
set showmode
set nojoinspaces            " Remove the extra spaces when joining lines.
set pastetoggle=<F4>        " Shortcut for toggling paste!

set fillchars+=vert:\ ,     " Remove the characters in the split line.
set showmatch               " Show matching pairs
set lazyredraw              " Redraw only when needed. Makes everything faster.
set mouse=                  " Disable the mouse for now.
set background=dark


""" Display invisibles.
set list
set listchars=eol:¬,tab:>-,trail:·,extends:>,precedes:<

""" Shhhhhhh
set visualbell
set noerrorbells

""" ctag reference.
set tags+=.git/tags,.git/tags.vendor

" More natural splits
set splitbelow              " Horizontal split below current.
set splitright              " Vertical split to right of current.
set inccommand=split

""" Configure fish shell.
" if &shell =~# 'fish$'
"     set shell=sh
" endif
