let mapleader=","

" Plugins 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Fuzzy Finder
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'                                           " Helper to change surrouding elements.
Plug 'jiangmiao/auto-pairs'                                         " Auto pairing for braces. Though this fucks up the alignment on certain cases.
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()

" Editor Stuff
set number                  " Add line numbers
set relativenumber          " Add relative numbers second to make the current line the line number.
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab               " I don't like tabs. Suck it Richard.
set colorcolumn=80          " Add rulers
set showcmd
set showmode
set nojoinspaces            " Remove the extra spaces when joining lines.
set fillchars+=vert:\ ,     " Remove the characters in the split line.
set showmatch               " Show matching pairs
set lazyredraw              " Redraw only when needed. Makes everything faster.
set mouse=                  " Disable the mouse for now.
set background=dark
set list
set listchars=eol:¬,tab:>-,trail:·,extends:>,precedes:<
set visualbell
set noerrorbells
set splitbelow              " Horizontal split below current.
set splitright              " Vertical split to right of current.
set inccommand=split

" Key bindings
inoremap jk <esc>
nnoremap ; :
vnoremap ; :
nnoremap Q @q
inoremap ;; ::
nnoremap <cr> o<esc>
nnoremap n nzz
nnoremap G Gzz
nnoremap <C-p> <esc>:silent call fzf#run({'source': 'ag -g "" --ignore-case --hidden', 'sink': 'e', 'down': '40%'})<CR>
nnoremap <C-t> <esc>:silent call fzf#run({'source': 'ag --skip-vcs-ignores -g "" --ignore-case --hidden', 'sink': 'e', 'down': '40%'})<CR>
nnoremap <C-w>\| <C-W>vzz
nnoremap <C-w>- <C-W>szz
inoremap 0- ->
inoremap -= =>
nnoremap = <C-w>=

""" I usually end up holding the bracket longer when saving.
inoremap [;w<cr> <esc>:w<cr>
nnoremap [;w<cr> <esc>:w<cr>
noremap  <C-s> <esc>:w<cr>

""" Convert all tabs into spaces.
nnoremap <leader><tab> :set expandtab<cr>:retab<cr>
