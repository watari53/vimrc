autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
" auto run NERDTree
autocmd VimEnter * execute 'NERDTree'

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein/')
  call dein#begin('~/.vim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('thinca/vim-quickrun')
  call dein#add('scrooloose/nerdtree')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

