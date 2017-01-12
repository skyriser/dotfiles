#!/bin/sh

# Install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv

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

# Install peco
case "${OSTYPE}" in
darwin*)
  brew install peco
  ;;
linux*)
  if [ ! -e "$HOME/local/bin/peco" ]; then
    echo "Install peco..."
    cd $HOME/local/tmp/
    wget https://github.com/peco/peco/releases/download/v0.3.6/peco_linux_386.tar.gz
    cd $HOME/local/tmp/
    tar zxvf peco_linux_386.tar.gz
    mv peco_linux_386/peco ~/local/bin/
    rm -rf peco_linux_386
    rm peco_linux_386.tar.gz
  fi
  ;;
esac
