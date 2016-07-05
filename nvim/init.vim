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
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

colorscheme base16-tomorrow-night

highlight Normal guibg=transparent
highlight CursorLine guibg=#333333
highlight CursorLineNr guibg=#333333
highlight LineNr guibg=transparent

let g:ctrlp_cache_dir   = $HOME . '/.cache/ctrlp'           " Cache location
let g:ctrlp_show_hidden = 1

if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'   " Use AG for caching
endif

noremap <F1> <esc>:source ~/.config/nvim/init.vim<CR>:echo "Reloaded neovim config."<CR>
nnoremap ; :
nnoremap <C-e> <esc>:NERDTreeToggle<CR>
nnoremap Q @q

