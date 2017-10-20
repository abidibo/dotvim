source ~/.vim/configurations/default/plugins.vim

" folding
Plug 'Konfekt/FastFold'

" pairs
Plug 'jiangmiao/auto-pairs'

" commentary
Plug 'tpope/vim-commentary'

" matchit
Plug 'tmhedberg/matchit'

" surroundings
Plug 'tpope/vim-surround'

" align
Plug 'junegunn/vim-easy-align'

" syntax checking
Plug 'w0rp/ale'

" completion
Plug 'maralla/completor.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'

" Debug
" python: https://github.com/gotcha/vimpdb
" php and more
Plug 'joonty/vdebug'

" semantic highlight
Plug 'jaxbot/semantic-highlight.vim'

" tagbar
Plug 'majutsushi/tagbar'

" scratchpad
Plug 'metakirby5/codi.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" the below rules where commented out because of supertab
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completor_python_binary = '/usr/bin/python2.7'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utilsnip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsExpandTrigger="<nop>"
let g:ulti_expand_or_jump_res = 0
function! <SID>ExpandSnippetOrReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=<SID>ExpandSnippetOrReturn()<CR>" : "\<CR>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {'javascript': ['prettier'], 'scss': ['stylelint'], 'python': ['autopep8']}
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
"let g:ale_sign_error = '✖'
"let g:ale_sign_warning = '⚠'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => semantic-highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <Leader>s :SemanticHighlightToggle<cr>
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
