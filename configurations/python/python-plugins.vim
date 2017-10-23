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
let g:ropevim_autoimport_modules = ["os", "shutil", "datetime", "json", "re", "django.*", "ckeditor_uploader.*", "ckeditor.*", "captcha.*", "constance.*", "easy_thumbnails.*", "widget_tweaks.*"]
let g:ropevim_goto_def_newwin = 'tabnew'
nnoremap <leader>rwp :call RopeWriteProject()<CR>
nnoremap <leader>rag :call RopeGenerateAutoimportCache()<CR>
nnoremap <leader>ra :call RopeAutoImport()<CR>
inoremap <c-c>rca <esc>:call RopeCodeAssist()<CR>
nnoremap <leader>rop :call RopeOpenProject()<CR>
