# NeoBundle導入

## 配置先のディレクトリを作成
$ mkdir -p ~/.vim/bundle
## NeoBundleをリポジトリから取得
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim


## NeoBundleを設定する
	$ vi ~/.vimrc

	set nocompatible
	filetype plugin indent off

	if has('vim_starting')
	  set runtimepath+=~/.vim/bundle/neobundle.vim
	  call neobundle#rc(expand('~/.vim/bundle'))
	endif 

	NeoBundleFetch 'Shougo/neobundle.vim'

	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'Shougo/neosnippet.vim'

	filetype plugin indent on

### インストールを実行

	:NeoBundleInstall

### プラグインアップデート

	:NeoBundleUpdate

### プラグイン削除
vimrcの記述を削除した後に以下を実行

	:NeoBundleClean

### カラースキーマのインストール設定(.vimrc)
以下のページから気に入ったものを選ぶ  
[Vim Color Scheme Advent Calendar](http://hail2u.github.io/vim-color-scheme-advent-calendar-2013.html)  
[Vim Colorscheme Gallery](http://cocopon.me/app/vim-color-gallery/)

[ir_black](https://github.com/twerth/ir_black)が気に入ったのでインストール

	$ vi ~/.vimrc

	" molokai
	NeoBundle 'tomasr/molokai'

	NeoBundle 'ujihisa/unite-colorscheme'


インストール

	:NeoBundleInstall 

プレビュー

	:Unite colorscheme -auto-preview

#### デフォルトカラースキーマ設定
プレビューで気に入ったものを設定する。ここではdarkblue
	$ vi ~/.vimrc

	colorscheme darkblue
	if &term =~ "xterm-256color" || "screen-256color"
	  set t_Co=256
	  set t_Sf=[3%dm
	  set t_Sb=[4%dm
	elseif &term =~ "xterm-color"
	  set t_Co=8
	  set t_Sf=[3%dm
	  set t_Sb=[4%dm
	endif

	syntax enable
	hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

## NERDTreeでツリー型ファイル表示
	$ vi ~/.vimrc"

	" ファイルをtree表示してくれる
	NeoBundle 'scrooloose/nerdtree'

## 最後に表示していたカーソル位置を復元する
	$ vi ~/.vimrc

	""""""""""""""""""""""""""""""
	" 最後のカーソル位置を復元する
	""""""""""""""""""""""""""""""""
	 if has("autocmd")
	     autocmd BufReadPost *
	         \ if line("'\"") > 0 && line ("'\"") <= line("$") |
	    \   exe "normal! g'\"" |
	    \ endif
	endif
	""""""""""""""""""""""""""""""

## その他便利な設定
	$ vi ~/.vimrc
	" 検索結果をハイライト表示する
	set hlsearch
	" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
	set laststatus=2
	" ステータス行に表示させる情報の指定(どこからかコピペしたので細かい意味はわかっ>ていない)
	set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
	" ペースト時の自動インデントを無効
	set paste
