function! alaska#before() abort

  source ~/.dotfiles/SpaceVim.d/autoload/alaska/base.vim
  source ~/.dotfiles/SpaceVim.d/autoload/alaska/keybindings.vim

  source ~/.dotfiles/SpaceVim.d/autoload/alaska/plugins/vimfiler.vim
  source ~/.dotfiles/SpaceVim.d/autoload/alaska/plugins/statusline.vim

endfunction

function! alaska#after() abort
endfunction
