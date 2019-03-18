cd $HOME
ln -s ~/.dotfiles/agignore .agignore
ln -s ~/.dotfiles/ctags .ctags
ln -s ~/.dotfiles/spacemacs .spacemacs.d

mkdir -p .config
ln -s ~/.dotfiles/nvim .config/nvim

ln -s ~/.dotfiles/git/gitconfig .gitignore
ln -s ~/.dotfiles/tmux/tmux.conf .tmux.conf

