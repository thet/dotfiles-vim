Plug 'haya14busa/incsearch.vim'  " https://github.com/haya14busa/incsearch.vim


" CONFIG
""""""""

let g:incsearch#consistent_n_direction = 1
let g:incsearch#magic = '\v'


" KEYMAP
""""""""

map /  <Plug>(incsearch-forward)
map g/ <Plug>(incsearch-stay)
