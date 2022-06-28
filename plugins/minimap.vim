Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}  " https://github.com/wfxr/minimap.vim

" CONFIG
""""""""
let g:minimap_width = 10
let g:minimap_auto_start = 0
let g:minimap_auto_start_win_enter = 0

" KEYMAP
""""""""
noremap <leader>m :MinimapToggle<CR>

