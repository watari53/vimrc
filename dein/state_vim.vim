if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/rcxroot/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/home/rcxroot/.vim/after,/home/rcxroot/.vim/dein//repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/rcxroot/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/rcxroot/.vim/dein'
let g:dein#_runtime_path = '/home/rcxroot/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/rcxroot/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/rcxroot/.vim,/usr/share/vim/vimfiles,/home/rcxroot/.vim/dein//repos/github.com/Shougo/dein.vim,/home/rcxroot/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim81,/home/rcxroot/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/rcxroot/.vim/after'
