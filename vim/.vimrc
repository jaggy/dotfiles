""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""

set nocompatible                   " be iMproved, required
filetype off                       " required

set rtp+=~/.vim/bundle/Vundle.vim  " set the runtime path to include Vundle and initialize
call vundle#begin()                " Initialize Vundle
Plugin 'gmarik/Vundle.vim'         " let Vundle manage Vundle, required





""""""""""""""""""""""""""""""
" Pre-configuration
"
" This is to make sure that certain plugins are configured to use the proper
" settings.
""""""""""""""""""""""""""""""
let mapleader="," " The leader key must be mapped before adding the keymaps





""""""""""""""""""""""""""""""
" Files
""""""""""""""""""""""""""""""

source ~/.dotfiles/vim/plugins.vim " Plugins
source ~/.dotfiles/vim/keymap.vim  " Keymap
call vundle#end()                  " Finish Vundle setup
filetype plugin indent on          " Required by vundle




""""""""""""""""""""""""""""""
" Files
""""""""""""""""""""""""""""""

autocmd BufRead,BufNewFile */.dotfiles/tmux/* set filetype=tmux

source ~/.dotfiles/vim/syntax/php.vim           " PHP
source ~/.dotfiles/vim/syntax/haml.vim          " HAML
source ~/.dotfiles/vim/syntax/javascript.vim    " Javascript
source ~/.dotfiles/vim/abbreviations.vim        " Abbreviations



""""""""""""""""""""""""""""""
" Airlne
""""""""""""""""""""""""""""""
"let g:airline_theme             = 'wombat'
let g:airline_theme             = 'jaggy'
let g:airline_powerline_fonts   = 1
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1




""""""""""""""""""""""""""""""
" Ctrl-P
""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim                    " Bundle path
set wildignore+=*/vendor/*,*/node_modules/*,*/storage/*     " Things to ignore
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'             " Cahche location
let g:ctrlp_dotfiles  = 1                                   " Show dotfiles


if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'   " Use AG for caching
endif




""""""""""""""""""""""""""""""
" PDV
""""""""""""""""""""""""""""""
"let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
let g:pdv_template_dir = $HOME ."/.dotfiles/vim/pdv/templates"
nnoremap <leader>c/ :call pdv#DocumentWithSnip()<CR>


""""""""""""""""""""""""""""""
" NeoCache
""""""""""""""""""""""""""""""
let g:acp_enableAtStartup             = 0                       " Disable AutoComplPop
let g:neocomplcache_enable_at_startup = 1                       " Use neocomplcache
let g:neocomplcache_enable_smart_case = 1                       " Use smartcase.
let g:neosnippet#enable_snipmate_compatibility = 1              " Snipmate
let g:neosnippet#snippets_directory='~/.dotfiles/vim/snippets'  " Custom snippet path
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"        " Navigating through the completion



""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""

syntax enable                                            " Enable Syntax Highlightin
color peachpuff                                          " Color scheme!
highlight ColorColumn ctermbg=yellow                     " Change the ruler color
highlight Pmenu ctermbg=black ctermfg=white              " Change autocomplete color


set directory=$HOME/.vim/swapfiles//
set nowrap                                               " NO WRAPPING
set laststatus=2                                         " Activate Powerline
set relativenumber                                       " Relative Line numbers
set cmdheight=1                                          " It's 2 by default
set colorcolumn=80,120                                   " Margin for PSR Compliance
set mouse=a                                              " Make the scrolling available
set term=xterm-256color
set termencoding=utf-8
set encoding=utf-8                                       " Always UTF-8
set t_Co=256                                             " Set 256 color terminal
set tabstop=4                                            " Columns per tab
set shiftwidth=4                                         " Indentation >> and << count
set expandtab                                            " Convert tabs into spaces
set list                                                 " Show invisiable characters
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<  " Set invisiable Characters




""""""""""""""""""""""""""""""
" Git Gutter Highlight Fix
""""""""""""""""""""""""""""""
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow





""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e                        " Remove excess white space
"autocmd BufRead * :retab                                  " Fix tabbing
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja  " Use the twig syntax highlighting
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby  " Use the ruby syntax highlighting
autocmd BufRead,BufNewFile *.blade.* set filetype=blade   " Use the blade syntax highlighting
autocmd BufRead,BufNewFile *.snip set filetype=neosnippet " Use the neosnippet syntax highlighting
autocmd BufWinEnter *.php :let &foldlevel=3               " Update the fold levels for PHP files
autocmd BufRead,BufNewFile *.haml.twig set filetype=haml
autocmd BufRead,BufNewFile /private/etc/apache2/vhosts/* set filetype=apache



""""""""""""""""""""""""""""""
" Load a local .lvim file if it exists
""""""""""""""""""""""""""""""
let configuration = getcwd() . '/.lvimrc'
if !empty(glob(configuration))
    execute 'source ' . configuration
endif
