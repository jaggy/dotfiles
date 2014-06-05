# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER='jaggyspaghetti'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="mrtazz"
#ZSH_THEME="agnoster"
# ZSH_THEME="juanghurtado"
#ZSH_THEME="nanotech"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
source "$HOME/.zsh_aliases"
source "$HOME/utilities/z/z.sh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/.bin:/Applications/Synergy.app/Contents/MacOS:bin:$HOME/utilities/android-sdk/platform-tools:$HOME/utilities/android-sdk/tools:$HOME/.composer/vendor/bin/:vendor/bin/:bin/

# Override Native PHP
PATH=/usr/local/php5/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Removing the bindings from Ctrl-S
stty -ixon

### VIM ZSH ###

# Set the terminal bindings to vi
set -o vi

# Remove the lag when using the escape in VIM mode
export KEYTIMEOUT=1

export ZSH_VI_STATUS;

function zle-line-init zle-keymap-select {
# function zsh_vi_status {
    ZSH_VI_STATUS="${${KEYMAP/vicmd/$fg[red]normal}/(main|viins)/$fg[yellow]insert}"
    # RPS2=$RPS1
    zle reset-prompt
}

# zle -N zsh_vi_status
zle -N zle-line-init
zle -N zle-keymap-select
#
#
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

setopt prompt_subst

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function get_pwd() {
  print -D $PWD
}

function put_spacing() {
  local git=$(git_prompt_info)
  if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
  else
    git=0
  fi

  local termwidth
  (( termwidth = ${COLUMNS} + 3 - ${#HOST} - ${#$(get_pwd)}  - ${git} ))

  local spacing=""
  for i in {1..$termwidth}; do
    spacing="${spacing} "
  done
  echo $spacing
}

function precmd() {
print -rP '
$fg[cyan]%m%{$reset_color%}: $fg[yellow]$(get_pwd) $(put_spacing)$(git_prompt_info)'
}

PROMPT='${ZSH_VI_STATUS} %{$reset_color%}→ '

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"