" tabs
set shiftwidth=2
set tabstop=2

" as jedi
nnoremap <leader>d :TernDef<cr>
nnoremap <s-k> :TernDoc<cr>

" bind method
inoremap <leader>bind <esc>BvEyEa = <esc>pa.bind(this)<esc>

" constructor
nnoremap <leader>const oconstructor () {<cr>super()<cr>}<esc>O

" proptypes
inoremap <leader>props .propTypes = {<cr>}<esc>O

" redux map state and dispatch to props
nnoremap <leader>msp oexport const mapStateToProps = state => {<cr>return {<cr>}<cr>}<esc>hO
nnoremap <leader>mdp oexport const mapDispatchToProps = dispatch => {<cr>return {<cr>}<cr>}<esc>hO

" redux connect
inoremap <leader>connect <esc>Iexport default connect(mapStateToProps, mapDispatchToProps)(<esc>A)<esc>

au FileType javascript :UltiSnipsAddFiletypes javascript-react
