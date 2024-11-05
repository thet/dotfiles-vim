" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" https://github.com/junegunn/vim-plug/issues/651
let g:plug_window = 'enew'
let g:plug_url_format = 'git@github.com:%s.git'


Plug 'tpope/vim-sensible'  " https://github.com/tpope/vim-sensible
Plug 'moll/vim-bbye'  " https://github.com/moll/vim-bbye

" Use `<leader>ww` in both windows to swap
Plug 'wesQ3/vim-windowswap'  " https://github.com/wesQ3/vim-windowswap


"" GIT, ETC
"""""""""""
Plug 'junegunn/gv.vim'  " https://github.com/junegunn/gv.vim
Plug 'tpope/vim-rhubarb'  " https://github.com/tpope/vim-rhubarb
" Plug 'cohama/agit.vim'  " https://github.com/cohama/agit.vim


" Against indentation annoyances
Plug 'tpope/vim-sleuth'  " https://github.com/tpope/vim-sleuth
Plug 'editorconfig/editorconfig-vim'  " https://github.com/editorconfig/editorconfig-vim
Plug 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim


"" SYNTAXN
""""""""""
"" NOTE: All syntax managed by treesitter, except for some.
""       Maybe the following come in handy sometime.

"Plug 'peitalin/vim-jsx-typescript', {'for': ['javascript.jsx', 'javascript.tsx']}  " https://github.com/peitalin/vim-jsx-typescript
"Plug 'mustache/vim-mustache-handlebars'  " https://github.com/mustache/vim-mustache-handlebars
"Plug 'groenewege/vim-less', {'for': 'less'}  " https://github.com/groenewege/vim-less
"Plug 'pld-linux/vim-syntax-vcl', {'for': 'varnish'}  " https://github.com/pld-linux/vim-syntax-vcl
"Plug 'alunny/pegjs-vim'  " https://github.com/alunny/pegjs-vim
                          " https://github.com/gf3/peg.vim/blob/master/syntax/peg.vim
"source $HOME/.vim/plugins/rfc-syntax.vim


"" COLORSCHEME
""""""""""""""

Plug 'dracula/vim', { 'as': 'dracula' }  " https://draculatheme.com/vim
Plug 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
Plug 'NLKNguyen/papercolor-theme'  " https://github.com/NLKNguyen/papercolor-theme


"source $HOME/.vim/plugins/coc.vim
"source $HOME/.vim/plugins/context.vim
source $HOME/.vim/plugins/copilot.vim
source $HOME/.vim/plugins/filebeagle.vim
source $HOME/.vim/plugins/fugitive.vim
source $HOME/.vim/plugins/fzf.vim
source $HOME/.vim/plugins/git-messenger.vim
source $HOME/.vim/plugins/gitgutter.vim
source $HOME/.vim/plugins/limelight.vim
source $HOME/.vim/plugins/lsp.vim
source $HOME/.vim/plugins/matchtagalways.vim
source $HOME/.vim/plugins/minimap.vim
source $HOME/.vim/plugins/open-browser.vim
source $HOME/.vim/plugins/qf.vim
source $HOME/.vim/plugins/ranger.vim
source $HOME/.vim/plugins/snippets.vim
source $HOME/.vim/plugins/tagbar.vim
source $HOME/.vim/plugins/treesitter.vim
source $HOME/.vim/plugins/undotree.vim
source $HOME/.vim/plugins/vem-tabline.vim

" only when gui mode
if has('gui_running')
    source $HOME/.vim/plugins/fontsize.vim
endif


" Add plugins to &runtimepath
call plug#end()

" tree-sitter needs to be configured after calling plug#end()
" See: https://github.com/nvim-treesitter/nvim-treesitter/issues/914#issuecomment-773670349
source $HOME/.vim/plugins/treesitter.lua
source $HOME/.vim/plugins/treesitter-context.lua

" LSP config
source $HOME/.vim/plugins/lsp.lua
