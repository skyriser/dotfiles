#
# Basic Settings
#

# 256Colors
export TERM='xterm-256color'
autoload colors
colors
color_prompt=yes

# Basic
export PATH=$HOME/local/bin:$HOME/local/sbin:$HOME/bin:$PATH
export LANG=ja_JP.UTF-8
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Autocomplete
LISTMAX=0
autoload -Uz compinit
compinit -u
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# History
HISTFILE=~/.histories
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history

# Terminal
case "${TERM}" in
kterm*|xterm)
  precmd() {
    echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
  }
  ;;
esac

# Fix nomatch (GLOB fix)
setopt nonomatch
setopt EXTENDED_GLOB

# Fix delete, home, end keys
# thanks to http://gry.sakura.ne.jp/2009/06/08/183/
bindkey -e
bindkey "^?"    backward-delete-char
bindkey "^H"    backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# Incremental-pattern-search
# thanks to http://subtech.g.hatena.ne.jp/secondlife/20110222/1298354852
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

#
# Include external config files
#

# Env
source ~/dotfiles/zsh/env

# Alias
source ~/dotfiles/zsh/alias

# By OS type
case "${OSTYPE}" in
darwin*)
  source ~/dotfiles/zsh/osx
  ;;
linux*)
  source ~/dotfiles/zsh/linux
  ;;
esac

# NVM
source ~/dotfiles/zsh/nvm

# Prompt
source ~/dotfiles/zsh/prompt

# Enhancd
source ~/dotfiles/enhancd/enhancd.sh

# By Local (if exists)
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
