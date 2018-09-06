# dein導入

## 環境
~~~
$ vim --version
VIM - Vi IMproved 8.1 (2018 May 18, compiled Sep  6 2018 14:11:16)
適用済パッチ: 1-348
~~~

## vim8ビルドとインストール
$ git clone https://github.com/vim/vim.git
$ cd vim/src
$ sudo make distclean
$ ./configure --enable-gui=auto --enable-gtk2-check --with-x --prefix=/usr
$ sudo make
$ sudo make install


## deinのインストール
$ mkdir -p ~/.vim/dein/repos/dein.vim
$ git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/dein.vim/


## 参考
install vim 8
  https://www.reddit.com/r/vim/comments/52knab/how_to_build_vim_8_with_clipboard_support/
