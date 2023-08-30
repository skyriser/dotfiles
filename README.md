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
$ cd dotfiles
$ make
```

### nvim plugins

Run first time only

```
call dein#install()
```

## Other

### Softwares

- [Starship](https://starship.rs/)
- [exa](https://github.com/ogham/exa)
  - `ls`
- [anyenv](https://github.com/anyenv/anyenv)
- [the_platinum_searcher](https://github.com/monochromegane/the_platinum_searcher)
  - `pt`

### Fonts

- [MesloNF pathed for Powerlevel10k](https://github.com/romkatv/powerlevel10k#fonts)
  - Meslo Nerd Font
