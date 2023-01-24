Plug 'mhinz/vim-grepper'  " https://github.com/mhinz/vim-grepper


" CONFIG
""""""""
let g:grepper = {}            " initialize g:grepper with empty dictionary
let g:grepper.prompt=0
let g:grepper.prompt_quote=1
let g:grepper.tools = ['rg', 'git', 'ag', 'grept', 'grep']
let g:grepper.rg = {'grepprg': 'rg -H --no-heading --vimgrep --smart-case --follow'}


" KEYMAP
""""""""

nnoremap <BSlash> :Grepper -query <c-r><c-w><space>
nnoremap <C-BSlash> :Grepper -query --no-ignore-vcs <c-r><c-w><space>
nnoremap \| :Grepper -buffers -query <c-r><c-w><space>
nnoremap <leader><Bslash> :Grepper -buffer -query <c-r><c-w><space>
