# dotfiles

## Preconfig

- [Homebrew](https://brew.sh/)

### Change zsh

```
brew install zsh
which zsh | sudo tee -a /etc/shells
chsh -s `which zsh`
```

## Initial setup

```
$ git clone git://github.com/skyriser/dotfiles.git
$ git submodule init
$ cd dotfiles
$ make
```

### NVim plugins

Run first time only

```
call dein#install()
```

### Copilot

- [copilot.vim](https://github.com/github/copilot.vim)

```
# on vim
:Copilot setup
```

## Other

### Softwares

- [Starship](https://starship.rs/)
- [asdf](https://asdf-vm.com/)
- [exa](https://github.com/ogham/exa)
  - `ls`
- [the_platinum_searcher](https://github.com/monochromegane/the_platinum_searcher)
  - `pt`

### Fonts

- [MesloNF pathed for Powerlevel10k](https://github.com/romkatv/powerlevel10k#fonts)
  - Meslo Nerd Font
