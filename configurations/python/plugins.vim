source ~/.vim/configurations/code/plugins.vim

Plug 'davidhalter/jedi-vim'

Plug 'python-rope/ropevim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jedi-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 1
autocmd FileType python setlocal omnifunc=jedi#completions

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ropevim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ropevim_autoimport_modules = ["os", "shutil", "datetime", "json", "re"]
let g:ropevim_goto_def_newwin = 'tabnew'
:map <C-x>rrwp :call RopeWriteProject()<CR>
:map <C-c>rrag :call RopeGenerateAutoimportCache()<CR>
:map <C-c>rra :call RopeAutoImport()<CR>
:map <C-c>rrca :call RopeCodeAssist()
