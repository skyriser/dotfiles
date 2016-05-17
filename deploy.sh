#!/bin/sh
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
ln -sfnv "$PWD/vim" "$HOME/.vim"
