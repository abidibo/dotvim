" local vimrc
Plug 'MarcWeber/vim-addon-local-vimrc'

" motion
Plug 'easymotion/vim-easymotion'

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" git
Plug 'tpope/vim-fugitive'

" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" paste
Plug 'vim-scripts/YankRing.vim'

" undo
Plug 'sjl/gundo.vim'

" substitution
Plug 'tpope/vim-abolish'

" Gist
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

" multiple selection
Plug 'terryma/vim-multiple-cursors'

" async
Plug 'skywind3000/asyncrun.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set ttimeoutlen=50
"set laststatus=2
"set t_Co=256
"let g:airline_powerline_fonts=1
"let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z', 'error', 'warning' ]
      \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-f> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_launcher='gnome-terminal --disable-factory -x bash -ic %s'
let g:fzf_height='40%'
map <space>f :Files<CR>
map <space>b :Buffers<CR>
map <space>g :GitFiles<CR>
map <space>c :Commits<CR>
map <space>t :Tags<CR>
map <space>/ :Ag<space>
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <C-x><C-f> <plug>(fzf-complete-file-ag)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YankRing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <space>y :YRShow<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
