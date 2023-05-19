if has('nvim')
    let g:python_host_prog = '~/dev/python-tools2/bin/python'
    let g:python3_host_prog = '~/dev/python-tools/py/bin/python'
    let g:node_host_prog = '~/node_modules/.bin/neovim-node-host'
    let g:loaded_ruby_provider = 0
endif

highlight TabLineSel     guibg=Green guifg=Blue
highlight PMenuSel       guibg=SlateGray4 guifg=Black
highlight TabLine        guibg=SlateGray3 guifg=Black
highlight TabLineFill    guibg=Grey guifg=White

" source $HOME/.vim/python-config.vim
source $HOME/.vim/keymap.vim
source $HOME/.vim/plugins/init.vim
source $HOME/.vim/config.vim
source $HOME/.vim/statusline.vim
source $HOME/.vim/gpg.vim
" end
