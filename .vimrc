set shell=bash

" Bundle plugins
source ~/.vim/config/bundles

" Basic settings
source ~/.vim/config/base

" Key bind settings
source ~/.vim/config/keys

" Local settings (option)
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
