set shell=bash

" Bundle plugins
source ~/.vim/config/vimrc.bundles

" Basic settings
source ~/.vim/config/vimrc.base

" Key bind settings
source ~/.vim/config/vimrc.keys

" Local settings (option)
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
