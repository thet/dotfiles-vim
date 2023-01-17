Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " https://github.com/junegunn/fzf

" More info:
" https://github.com/junegunn/fzf/wiki/Examples-(vim)


" CONFIG
""""""""

let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_launcher = 'xterm -e sh -ic %s'

function! FZFfiles()
    call fzf#run({
    \   'source': 'ag  -filU --ignore ./var --ignore ./develop-eggs --ignore *.py? -g ""',
    \   'sink':    'e',
    \   'options': '-m',
    \ })
endfunction

" https://github.com/junegunn/fzf/wiki/Examples-(vim)#choose-color-scheme
function! FZFcolor()
    call fzf#run({
    \   'source':
    \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
    \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
    \   'sink':    'colo',
    \   'options': '+m',
    \   'left':    30
    \ })
endfunction

" https://github.com/junegunn/fzf/wiki/Examples-(vim)#select-buffer
function! s:fzf_buflist()
    redir => ls
    silent ls
    redir END
    return split(ls, '\n')
endfunction

function! s:fzf_bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

function! FZFbuffers()
    call fzf#run({
    \   'source':  reverse(<sid>fzf_buflist()),
    \   'sink':    function('s:fzf_bufopen'),
    \   'options': '+m',
    \   'down':    len(<sid>fzf_buflist()) + 2
    \ })
endfunction

" https://github.com/junegunn/fzf/wiki/Examples-(vim)#simple-mru-search
function! s:fzf_allfiles()
    return extend(
    \ filter(copy(v:oldfiles),
    \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
    \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

function! FZFmru()
    call fzf#run({
    \ 'source':  reverse(s:fzf_allfiles()),
    \ 'sink':    'edit',
    \ 'options': '-m -x +s',
    \ 'down':    '40%'
    \ })
endfunction

function! FZFGitFiles()
  call fzf#run({
    \ 'source': 'git ls-files',
    \ 'sink': 'e',
    \ 'options': '-m',
    \ })
endfunction



" KEYMAP
""""""""

"noremap <leader>/ :FZF<CR>
"noremap <leader>. :call FZFmru()<CR>

noremap <leader>/ :call FZFfiles()<CR>
noremap <leader>. :call FZFGitFiles()<CR>

noremap <leader>, :call FZFbuffers()<CR>
noremap <leader>c :call FZFcolor()<CR>


" Open multiple files by marking them with <tab>

