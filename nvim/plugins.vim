call plug#begin('~/.vim/plugged')

"----------------------------------------------------------------------
" Editor Features
"----------------------------------------------------------------------
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }             " Tree View
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Fuzzy Finder
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'                                              " HTML expander
Plug 'airblade/vim-gitgutter'                                       " Show git updates on the gutter.
Plug 'tpope/vim-surround'                                           " Helper to change surrouding elements.
Plug 'scrooloose/nerdcommenter'                                     " Comment
Plug 'arnaud-lb/vim-php-namespace'                                  " Namespace integration
Plug 'junegunn/vim-easy-align'                                      " Alignment plugin
Plug 'jiangmiao/auto-pairs'                                         " Auto pairing for braces. Though this fucks up the alignment on certain cases.
Plug 'rizzatti/dash.vim'

""" Status bar support
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

"----------------------------------------------------------------------
" IDE-esque
"----------------------------------------------------------------------
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }                                              " Previewing file meta.
Plug 'soramugi/auto-ctags.vim', { 'for': ['php', 'jinja', 'blade'] }  " Auto generate the ctags.
Plug 'mikewest/vimroom', { 'for': ['md', 'markdown'] }

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
Plug 'mkarmona/colorsbox'

"----------------------------------------------------------------------
" Syntax Highlighting
"----------------------------------------------------------------------
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'zaiste/tmux.vim', { 'for': 'tmux' }
Plug 'jwalton512/vim-blade', { 'for': 'blade' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }
Plug 'plasticboy/vim-markdown', { 'for': 'md' }

call plug#end()
