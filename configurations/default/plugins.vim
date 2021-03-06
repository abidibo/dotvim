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
Plug 'gregsexton/gitv'
Plug 'kablamo/vim-git-log'
" Plug 'jaxbot/github-issues.vim'

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

" align
Plug 'junegunn/vim-easy-align'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set ttimeoutlen=50
"set laststatus=2
"set t_Co=256
"let g:airline_powerline_fonts=1
"let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'y', 'z', 'error', 'warning' ]
      \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-f> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_launcher='gnome-terminal --disable-factory -x bash -ic %s'
let $FZF_DEFAULT_COMMAND = 'ag -l'
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fugitive git bindings
nnoremap <leader><leader>ga :Git add %:p<CR><CR>
nnoremap <leader><leader>gs :Gstatus<CR>
nnoremap <leader><leader>gc :Gcommit -v -q<CR>
nnoremap <leader><leader>gcf :Gcommit %<CR>
nnoremap <leader><leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader><leader>gd :Gdiff<CR>
nnoremap <leader><leader>ge :Gedit<CR>
nnoremap <leader><leader>gr :Gread<CR>
nnoremap <leader><leader>gw :Gwrite<CR><CR>
nnoremap <leader><leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader><leader>gp :Ggrep<Space>
nnoremap <leader><leader>gm :Gmove<Space>
nnoremap <leader><leader>gb :Git branch<Space>
nnoremap <leader><leader>go :Git checkout<Space>
nnoremap <leader><leader>gps :Dispatch! git push<CR>
nnoremap <leader><leader>gpl :Dispatch! git pull<CR>
