#!/bin/sh

# Install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
mkdir -p ~/.anyenv/plugins
git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update

# Install yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

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
ln -sfnv "$PWD/vim" "$HOME/.vim"

# Make local dirs
mkdir -p $HOME/local/bin $HOME/local/etc $HOME/local/include $HOME/local/lib $HOME/local/src $HOME/local/tmp
