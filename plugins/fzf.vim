Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }  " https://github.com/junegunn/fzf
Plug 'junegunn/fzf.vim'

" Note
""""""

" You might want to set the environment variable `FZF_DEFAULT_COMMAND`. See:
" https://github.com/junegunn/fzf#environment-variables

" Open multiple files by marking them with <tab>


" CONFIG
""""""""

let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_launcher = 'xterm -e sh -ic %s'


"" Example for custom searcher

" More info:
" https://github.com/junegunn/fzf/wiki/Examples-(vim)

" function! FZFGitFiles()
"   call fzf#run({
"     \ 'source': 'git ls-files',
"     \ 'sink': 'e',
"     \ 'options': '-m',
"     \ })
" endfunction
" noremap <leader>. :call FZFGitFiles()<CR>


" " https://github.com/junegunn/fzf/wiki/Examples-(vim)#simple-mru-search
" function! s:fzf_allfiles()
"     return extend(
"     \ filter(copy(v:oldfiles),
"     \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
"     \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
" endfunction
"
" function! FZFmru()
"     call fzf#run({
"     \ 'source':  reverse(s:fzf_allfiles()),
"     \ 'sink':    'edit',
"     \ 'options': '-m -x +s',
"     \ 'down':    '40%'
"     \ })
" endfunction


" KEYMAP
""""""""

"noremap <leader>/ :FZF<CR>
"noremap <leader>. :call FZFmru()<CR>

noremap <leader>/ :Files<CR>
noremap <leader>. :GFiles<CR>

noremap <leader>, :Buffers<CR>
noremap <leader>c :Colors<CR>
noremap <leader>l :History<CR>
noremap <leader>' :Lines<CR>

"
