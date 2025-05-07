set shell=bash

" Lazy.nvim
lua require('config.lazy')

" Basic settings
source ~/dotfiles/nvim/config/base

" Key bind settings
source ~/dotfiles/nvim/config/keys

" Copilot settings
lua require('config.copilot')

" Local settings (option)
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
