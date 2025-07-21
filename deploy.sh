#!/bin/sh

# Install dotfiles
cd $(dirname $0)
for dotfile in .?*; do
  case $dotfile in
    ..)
      continue;;
    .git)
      continue;;
    *)
      ln -sfnv "$PWD/$dotfile" $HOME
      ;;
  esac
done

# Install config
ln -sfnv ~/dotfiles/starship.toml ~/.config/starship.toml
ln -sfnv ~/dotfiles/nvim ~/.config/nvim

# Make local dirs
mkdir -p $HOME/local/bin $HOME/local/etc $HOME/local/include $HOME/local/lib $HOME/local/src $HOME/local/tmp

# Install Claude global config
mkdir -p $HOME/.claude
ln -sfnv "$PWD/CLAUDE.md.global" $HOME/.claude/CLAUDE.md
