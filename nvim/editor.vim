set nowrap
set tabstop=4
set shiftwidth=4
set expandtab               " I don't like tabs. Suck it Richard.
set showcmd
set showmode
set nojoinspaces            " Remove the extra spaces when joining lines.
set fillchars+=vert:\ ,     " Remove the characters in the split line.
set showmatch               " Show matching pairs
set lazyredraw              " Redraw only when needed. Makes everything faster.
set mouse=                  " Disable the mouse for now.
set background=dark
set incsearch
set ignorecase
set smartcase
set scrolloff=3
set sidescrolloff=5

" set termguicolors           " TRUUUUUUUUUUUUEEEEEEEEEEE COLOOOOOOOOOOOORS!! 🎵
color colorsbox-steighties

""" Shhhhhhh
set visualbell
set noerrorbells

""" ctag reference.
set tags+=.git/tags,.git/tags.vendor

" More natural splits
set splitbelow              " Horizontal split below current.
set splitright              " Vertical split to right of current.
set inccommand=split
