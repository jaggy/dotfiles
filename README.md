# dotfiles

This will be my personal documentation.

## Installation

All you need to do is run the set up file and you're all set.

    sh setup.sh


## Fish (Friendly Interactive Shell)

**2016-08-25**: I'm trying to switch from zsh to fish just because _why not right?_

First impressions, I like the configuration right out of the box. Syntax highlighting, autocompletion and search on tab completion! (Not like I'll actually use them but, it's still nice.)

It's hard to migrate my zsh config to fish though, it's taking quite a bit of time to adjust from a very different shell scripting paradigm.

### Fish Equivalent from ZSH

#### Exporting Variables

**zsh**
```zsh
export PATH="$HOME/.bin:$PATH"
```

**fish**
```fish
set -x fish_user_paths $HOME/bin $fish_user_paths
```