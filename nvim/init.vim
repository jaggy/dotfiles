set number
set relativenumber
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set colorcolumn=80,120
set cursorline
set showcmd
set ruler
set showmode
set nojoinspaces
set pastetoggle=<F4>

set fillchars+=vert:\ ,     " Remove the characters in the split line.
set showmatch               " Show matching pairs
set lazyredraw              " Redraw only when needed. Makes everything faster.


let mapleader=","
" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'             " Emmet vim plugin.
Plug 'jdkanani/vim-material-theme' " MATERIAL DESIGN!

call plug#end()

colorscheme base16-tomorrow-night

highlight Normal guibg=transparent
highlight ColorColumn guibg=#333333
highlight CursorLine guibg=#333333
highlight CursorLineNr guibg=#333333
highlight LineNr guibg=transparent

let g:airline_powerline_fonts = 1

noremap <F1> <esc>:source ~/.config/nvim/init.vim<CR>:echo "Reloaded neovim config."<CR>
nnoremap ; :
nnoremap <C-e> <esc>:NERDTreeToggle<CR>
nnoremap Q @q
nnoremap <C-p> <esc>:FZF<CR>
