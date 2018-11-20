" tabs
set shiftwidth=2
set tabstop=2

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

au VimEnter *  NERDTree
