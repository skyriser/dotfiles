set shell=bash

" Bundle plugins
source ~/dotfiles/nvim/config/bundles

" Basic settings
source ~/dotfiles/nvim/config/base

" Key bind settings
source ~/dotfiles/nvim/config/keys

" Local settings (option)
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
