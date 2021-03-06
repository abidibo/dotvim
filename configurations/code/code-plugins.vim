" FPT
Plug 'vim-scripts/netrw.vim'

" TODO
Plug 'vim-scripts/TaskList.vim'

" Indentation
Plug 'Yggdroot/indentLine'

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

" syntax checking
Plug 'w0rp/ale'

" completion
Plug 'maralla/completor.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" Debug
" python: https://github.com/gotcha/vimpdb
" php and more
Plug 'joonty/vdebug'

" tagbar
Plug 'majutsushi/tagbar'

" scratchpad
Plug 'metakirby5/codi.vim'

" dev icons
Plug 'ryanoasis/vim-devicons'

" slimux
Plug 'epeli/slimux'

" gutentags
Plug 'ludovicchabant/vim-gutentags'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" the below rules where commented out because of supertab
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" swith the following lines to autocomplete python 2/3
" let g:completor_python_binary = '/usr/bin/python2.7' " kite
let g:completor_python_binary = '/usr/bin/python3.6' " kite
let g:completor_filetype_map = {'python.django': 'python'}
" let g:kite_auto_complete=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Surround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ss ysiw

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TODO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>todo :TODOToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Utilsnip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
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
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_javascript_flow_use_global = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Prettier does not have spaceBeforeFunctionParen option => fix with eslint after
" https://github.com/prettier/prettier/issues/1139
let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'scss': ['prettier'], 'python': ['yapf', 'isort'], 'html': ['tidy']}
" create a .prettierrc file in the project root
" {
"   'semi':false,
"   'singleQuote':true,
"   'bracketSpacing':true
" }
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linters = {
\   'scss': ['sasslint'],
\}
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
"let g:ale_echo_cursor = 0 " vim bug which hides cursor when error il displayed

" let g:ale_sign_error = '✖'
" let g:ale_sign_warning = '⚠'
nnoremap <leader>f :ALEFix<cr>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-devicons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=RobotoMono\ Nerd\ Font\ Mono

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => slimux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => gutentags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%{gutentags#statusline()}
