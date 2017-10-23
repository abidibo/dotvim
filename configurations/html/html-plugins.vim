" parser
Plug 'mattn/emmet-vim'

" Mappings
Plug 'tpope/vim-ragtag'

" completion
Plug 'jvanja/vim-bootstrap4-snippets'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\    "javascript.jsx": {
\        "extends": "jsx",
\        "quote_char": "'"
\    }
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ragtag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ragtag_global_maps=1
