# dotfiles

Configファイル管理リポジトリです。
基本的にホームディレクトリにクローンすれば大丈夫。

## Usage
```
$ cd ~
$ git clone git://github.com/skyriser/dotfiles.git
$ ./dotfiles/init.sh
```

## tmux
GNU screenライクなキー配置にしてます。
基本的にメタキーは`Ctrl+A`。これは譲れない。


## zsh
.zshrcは発展途中です。
色々まだ調整中です。


## vim

vim7.3以上必須です。
無かったらコンパイルして下さい。勿論 `--with-features=huge` で。

使う前にスワップディレクトリの作成と、NeoBundleの準備が必要です。
```
$ cd
$ mkdir .vimswap
$ mkdir -p ~/.vim/bundle
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

初回起動時に
```
:NeoBundleInstall
```
を起動して、再度起動すること。
それでプラグインが全部使える状態になります。
