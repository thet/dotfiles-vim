Plug 'jeetsukumaran/vim-buffergator'  " https://github.com/jeetsukumaran/vim-buffergator


" CONFIG
""""""""

let g:buffergator_autoexpand_on_split = 0
let g:buffergator_viewport_split_policy = 'L'
let g:buffergator_autodismiss_on_select = 0
let g:buffergator_autoupdate = 1
let g:buffergator_split_size = 40
let g:buffergator_sort_regime = 'bufnum'
let g:buffergator_display_regime = 'basename'
let g:buffergator_show_full_directory_path = 0
let g:buffergator_suppress_keymaps = 1


" KEYMAP
""""""""

noremap <leader>m :BuffergatorToggle<CR>
noremap <leader>M :BuffergatorTabsToggle<CR>
