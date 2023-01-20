Plug 'Valloric/MatchTagAlways', {'for': ['html', 'xhtml', 'xml']}  " https://github.com/Valloric/MatchTagAlways


" CONFIG
""""""""

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'jinja' : 1,
    \ 'pt' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'zcml' : 1,
    \}


" KEYMAP
""""""""

noremap ]t :MtaJumpToOtherTag<cr>
noremap [t :MtaJumpToOtherTag<cr>
