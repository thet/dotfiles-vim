"" GENERAL - I think we can all agree this would be nice default
let mapleader = ","
set nomodeline  " FreeBSD security advisory for this one...
set enc=utf-8  " set the default encoding
set title  " set the title of the window
set titlestring=%f%(\ [%M]%)¬
set nocompatible  " This setting prevents vim from emulating the original vi's
                  " bugs and limitations
set showmode
set showcmd  " Display an incomplete command in the lower right corner of the Vim window
set history=1000  " have 1000 lines of command-line (etc) history
set so=4  " Set a margin of lines when scrolling
"" set statusline=\ \ \ \ \ line:%l\ column:%c\ \ \ %M%Y%r%=%-14.(%t%)\ %p%%
                    " set a custom status line similar to that of ``:set ruler``
set completeopt+=longest,menuone
set laststatus=2  " show the statusline in all window
set equalalways  " set all window splits equal
if has('mouse')
    set mouse=a  " have the mouse enabled all the time
    set mousemodel=popup " make a menu popup on right click
endif
set hidden  " allow for switching buffers when a file has changes
set t_vb=  " make sure the bell shuts up
set pastetoggle=<F2>
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set autoindent

"" turn on syntax highlighting¬
syntax on
"" set synmaxcol=140  " limit syntax highlighting to the num cols

"" enables filetype specific plugins
filetype on
filetype plugin on
filetype indent on


"" BACKUP / SWAP FILES (HIDE THEM)
set backupdir=~/.vim/backup,.,/tmp¬
set directory=~/.vim/backup/swap,.,/tmp¬
set backupskip=/tmp/*,/private/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*¬

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set foldmethod=indent

set formatoptions=qrnl

"" highlight all python syntax
let python_highlight_all=1

""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" SEARCH
""
nnoremap / /\v
vnoremap / /\v
set incsearch  " find as you type
set gdefault
set hlsearch  " highlight the terms
set ignorecase  " make searches case-insensitive
set smartcase  " unless they contain upper-case letters


""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" STRIP TRAILING WHITESPACE
""
function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildignore+=*.o,*.obj
set wildignore+=*.pyc,*.pyo
set wildignore+=.git,.svn,.hg

""set wildignore+=bin,develop-eggs,eggs,*egg-info/**,include,lib,parts,var
"" Showmarks ignoring type of windows
""h : Help
""m : Non-modifiable
""p : Preview
""q : Quickfix
""r : Readonly
let g:showmarks_ignore_type="hmpr"

""let $PYTHONPATH = $HOME."/.vim/src/pyflakes:".$PYTHONPATH
""let $PYTHONPATH = $HOME."/.vim/src/pep8:".$PYTHONPATH
""let $PATH = $HOME."/.vim/bin/:".$PATH

"" vim:ft=vim
