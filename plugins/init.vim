" MUST READ
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" https://github.com/junegunn/vim-plug/issues/651
let g:plug_window = 'enew'
let g:plug_url_format = 'git@github.com:%s.git'


Plug 'tpope/vim-sensible'  " https://github.com/tpope/vim-sensible
Plug 'chrisbra/vim-diff-enhanced'  " https://github.com/chrisbra/vim-diff-enhanced
Plug 'moll/vim-bbye'  " https://github.com/moll/vim-bbye

" Eventually interesting:
" system copy.
" Plug 'christoomey/vim-system-copy'  " https://github.com/christoomey/vim-system-copy


"" GIT, ETC
"""""""""""
Plug 'tpope/vim-rhubarb'  " https://github.com/tpope/vim-rhubarb
Plug 'junegunn/gv.vim'  " https://github.com/junegunn/gv.vim
Plug 'cohama/agit.vim'  " https://github.com/cohama/agit.vim


"" SYNTAXN
""""""""""

" Against indentation annoyances
Plug 'tpope/vim-sleuth'  " https://github.com/tpope/vim-sleuth
Plug 'editorconfig/editorconfig-vim'  " https://github.com/editorconfig/editorconfig-vim
Plug 'gorkunov/smartpairs.vim'  " https://github.com/gorkunov/smartpairs.vim

Plug 'pangloss/vim-javascript', {'for': ['javascript', 'javascript.jsx', 'javascript.vue']}  " https://github.com/pangloss/vim-javascript
Plug 'posva/vim-vue', {'for': ['javascript.vue']}  " https://github.com/posva/vim-vue
" Plug 'mxw/vim-jsx', {'for': ['javascript', 'javascript.jsx']}  " https://github.com/mxw/vim-jsx
Plug 'peitalin/vim-jsx-typescript', {'for': ['javascript.jsx', 'javascript.tsx']}  " https://github.com/peitalin/vim-jsx-typescript
Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescript.tsx']}  " https://github.com/leafgarland/typescript-vim

Plug 'othree/html5.vim', {'for': ['html', 'tal']}  " https://github.com/othree/html5.vim
Plug 'ap/vim-css-color', {'for': ['css', 'less', 'scss', 'sass']}  " https://github.com/ap/vim-css-color
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'less', 'scss', 'sass']}  " https://github.com/hail2u/vim-css3-syntax
Plug 'cakebaker/scss-syntax.vim', {'for': ['scss', 'sass']}  " https://github.com/cakebaker/scss-syntax.vim
Plug 'groenewege/vim-less', {'for': 'less'}  " https://github.com/groenewege/vim-less

Plug 'plasticboy/vim-markdown', {'for': 'markdown'}  " https://github.com/plasticboy/vim-markdown
Plug 'mfukar/robotframework-vim', {'for': 'robot'}  " https://github.com/mfukar/robotframework-vim
Plug 'chr4/nginx.vim', {'for': 'nginx'}  " https://github.com/chr4/nginx.vim
Plug 'pld-linux/vim-syntax-vcl'  " https://github.com/pld-linux/vim-syntax-vcl


"" COLORSCHEME
""""""""""""""
Plug 'endel/vim-github-colorscheme'  " https://github.com/endel/vim-github-colorscheme
Plug 'NLKNguyen/papercolor-theme'  " https://github.com/NLKNguyen/papercolor-theme

source $HOME/.vim/plugins/buffergator.vim
source $HOME/.vim/plugins/coc.vim
source $HOME/.vim/plugins/filebeagle.vim
source $HOME/.vim/plugins/fugitive.vim
source $HOME/.vim/plugins/fzf.vim
source $HOME/.vim/plugins/git-messenger.vim
source $HOME/.vim/plugins/gitgutter.vim
source $HOME/.vim/plugins/grepper.vim
source $HOME/.vim/plugins/incsearch.vim
source $HOME/.vim/plugins/matchtagalways.vim
source $HOME/.vim/plugins/open-browser.vim
source $HOME/.vim/plugins/ranger.vim
source $HOME/.vim/plugins/snippets.vim
source $HOME/.vim/plugins/tagbar.vim
source $HOME/.vim/plugins/undotree.vim
source $HOME/.vim/plugins/vem-tabline.vim
" source $HOME/.vim/plugins/context.vim

" only when gui mode
if has('gui_running')
    source $HOME/.vim/plugins/fontsize.vim
endif


" Add plugins to &runtimepath
call plug#end()
