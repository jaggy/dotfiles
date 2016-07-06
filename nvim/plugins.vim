call plug#begin('~/.vim/plugged')

"----------------------------------------------------------------------
" Editor Features
"----------------------------------------------------------------------
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }             " Tree View
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Fuzzy Finder
Plug 'vim-airline/vim-airline'                                      " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'                                              " HTML expander
Plug 'airblade/vim-gitgutter'                                       " Show git updates on the gutter.
Plug 'tpope/vim-surround'                                           " Helper to change surrouding elements.
Plug 'scrooloose/nerdcommenter'                                     " Comment
Plug 'arnaud-lb/vim-php-namespace'                                  " Namespace integration

"----------------------------------------------------------------------
" IDE-esque
"----------------------------------------------------------------------
Plug 'majutsushi/tagbar'                                              " Previewing file meta.
Plug 'soramugi/auto-ctags.vim', { 'for': ['php', 'jinja', 'blade'] }  " Auto generate the ctags.

"----------------------------------------------------------------------
" Autocomplete &&  Snippets
"----------------------------------------------------------------------
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

"----------------------------------------------------------------------
" Themes
"----------------------------------------------------------------------
Plug 'chriskempson/base16-vim'

"----------------------------------------------------------------------
" Syntax Highlighting
"----------------------------------------------------------------------
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'js' }
Plug 'zaiste/tmux.vim', { 'for': 'tmux' }
Plug 'xsbeats/vim-blade', { 'for': 'blade' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }
Plug 'plasticboy/vim-markdown', { 'for': 'md' }

call plug#end()
