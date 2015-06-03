# dotfiles

Configファイル管理リポジトリです。
基本的にホームディレクトリにクローンすれば大丈夫。

## Usage

### 基本インストール

```
$ cd ~
$ git clone git://github.com/skyriser/dotfiles.git
$ git submodule init
$ git submodule update
$ ./dotfiles/init.sh
```

### vim 周りの設定

初回起動時に

```
:NeoBundleInstall
```

を起動。

## tmux

GNU screenライクなキー配置にしてます。
メタキーは `Ctrl` + `a` です。

### 代表的なコマンド (例)

- Meta + d => デタッチ
- Meta + c => 新ウィンドウ
- Meta + n / space => 次
- Meta + p => 前
- Meta + A => ウィンドリネーム
- Meta + v => 垂直分割
- Meta + s => 水平分割
- Meta + cursor => 分割ウィンドウ間移動

## zsh

割とデフォルトです。
git のリポジトリ表示等を組み込んであります。
rbenv ではなく rvm を採用しています。

## vim

vim7.3 以上必須です。
無かったらコンパイルして下さい。勿論 `--with-features=huge` で。

### Function キー割り当て

|Key|Desc.|
|----|----|
|F3|ホワイトスペース削除|
|F4|新しいタブ|
|F5/F6|タブ移動|
|F7|Nerdtree ON/OFF|
|F11|ペーストモード ON/OFF|
