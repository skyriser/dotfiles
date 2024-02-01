set shell=bash

" Lazy.nvim
source ~/dotfiles/nvim/config/lazy.lua

" Basic settings
source ~/dotfiles/nvim/config/base

" Key bind settings
source ~/dotfiles/nvim/config/keys

" Local settings (option)
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
