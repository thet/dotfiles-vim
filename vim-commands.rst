Extensions
----------


Language Servers
http://www.lazyvim.org/extras/lang/tailwind
https://github.com/tailwindlabs/tailwindcss-intellisense/

https://github.com/j-hui/fidget.nvim
https://github.com/folke/lazydev.nvim

https://github.com/junegunn/vim-plug
https://github.com/folke/lazy.nvim

https://github.com/nvim-telescope/telescope.nvim/wiki/Showcase

https://github.com/neoclide/coc.nvim

https://github.com/neoclide/coc.nvim/wiki/Using-the-configuration-file
https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
https://github.com/neoclide/coc.nvim/wiki/Language-servers
https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
https://samroeca.com/coc-plugin.html#writing-an-extension

https://github.com/pappasam/coc-jedi
https://github.com/pappasam/jedi-language-server
https://github.com/davidhalter/jedi
https://pypi.org/project/jedi/
https://jedi.readthedocs.io/

https://github.com/palantir/python-language-server

https://github.com/iamcco/coc-diagnostic
https://github.com/iamcco/diagnostic-languageserver

https://github.com/neoclide/coc-vetur

https://github.com/fannheyward/coc-xml
https://github.com/eclipse/lemminx


https://github.com/neoclide/coc-html
https://code.visualstudio.com/docs/languages/html
https://github.com/microsoft/vscode/tree/main/extensions/html
based on
https://github.com/beautify-web/js-beautify
html.format.wrapAttributesIndentSize
https://github.com/microsoft/vscode/issues/136767
https://github.com/microsoft/vscode/issues/55743

https://pypi.org/project/pylint/
https://github.com/PyCQA/pylint/
https://pypi.org/project/flake8/
https://pypi.org/project/pyflakes/
https://pypi.org/project/docformatter/


https://github.com/garbas/vim-snipmate
https://marketplace.visualstudio.com/items?itemName=Derico.plone-vs-snippets
https://marketplace.visualstudio.com/items?itemName=derekdavenport.vscode-plonefs


GREP Plugins
https://vimawesome.com/plugin/vim-grepper
https://github.com/mhinz/vim-grepper

https://vimawesome.com/plugin/ack-vim
https://github.com/mileszs/ack.vim#can-i-use-ag-the-silver-searcher-with-this

https://vimdoc.sourceforge.net/htmldoc/options.html#'grepprg'
https://vimdoc.sourceforge.net/htmldoc/quickfix.html#:grep
https://vimdoc.sourceforge.net/htmldoc/motion.html#word-motions

vim-qf—short for vim-quickfix
https://github.com/romainl/vim-qf



search/replace with substitution
----
https://vi.stackexchange.com/a/25547/6303
https://graz.social/@thet/112440091318622087
::

    :%s/SEARCH(.*)STRING/REPLACE\1STRING/gc

`()` ... GROUP
`\1` ... SUBSTITUTION

e.g.::

    :%s/component={\(.*\)}/element={<\1\/>}/gc


remove duplicate lines
---
::

    :%!uniq


tab management
---

close a tab::

    :tabc
    :tabclose

    :help tabpage
    :help buffer-hidden



Reload the current vimrc without restarting
---
https://superuser.com/a/132030/404355
::

    :so $MYVIMRC


Reload the current file::

    :so %



Search history
---
::

    /<UP>


Extend the current search with another pattern
---
https://stackoverflow.com/a/9261629/1337474
https://graz.social/@thet/111953000899093970
https://hachyderm.io/@SmileyKeith/111965047954342554
::

    nnoremap <silent> + :let @/ .= '\\|\<'.expand('<cword>').'\>'<cr>:call histadd('search', @/)<cr>n

Extend also to visual mode::

    vnoremap <silent> + <c-\><c-n>:let @/ .= '\\|'.escape(lh#visual#selection(), '/\^$*.[~')<cr>n


insert current search pattern into text
---
https://stackoverflow.com/a/27970127/1337474
In insert-mode, press simultanously::

    <ctrl-r>/

which is::

    <ctrl-r>{register}

help on registers::

    :h registers


There are these types of registers::

    There are ten types of registers:
    1. The unnamed register ""
    2. 10 numbered registers "0 to "9
    3. The small delete register "-
    4. 26 named registers "a to "z or "A to "Z
    5. Three read-only registers ":, "., "%
    6. Alternate buffer register "#
    7. The expression register "=
    8. The selection registers "* and "+
    9. The black hole register "_
    10. Last search pattern register "/


sort for blocks
https://superuser.com/a/752821/404355
::

    :g/def/,/end/s/\n/§
    :%sort
    :g/def/s/§/\r


::

    :g/<utility/,/\/>/s/\n/§
    :%sort
    :g/<utility/s/§/\r


::

    :'<,'>g/@staticmethod/,/return.*$/s/\n/§

    :'<,'>g/@property/,/return.*$/s/\n/§
    :g/@property/s/§/\r


    :'<,'>g/def/,/return/s/\n/§
    :g/def/s/§/\r


vim command history
---
::

    q:


hex edit
--------
https://vi.stackexchange.com/a/2234/6303
::

    :%!xxd

after making changes, back to normal text::

    :%!xxd -r

Synatx highlight::

    :set ft=xxd


Insert word under cursor into command line
------------------------------------------
https://stackoverflow.com/questions/48642/how-do-i-specify-the-word-under-the-cursor-on-vims-commandline
::

    :nmap <leader>w :s/\(<c-r>=expand("<cword>")<cr>\)/

or while in command-line mode hit: `<C-r><C-w>`







Motions
-------
::

    cw ... change word


Set/check filetype
------------------
::

    set filetype?
    set filetype=html
    set ft=html

list filetypes
--------------
https://vi.stackexchange.com/a/5782/6303
::

    :setfiletype <CTRL-D>


check variable
--------------
::

    set VARIABLENAME?


Check mapping of <cr>
---------------------
::

    :verbose imap <cr>


Coc
---
https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions

:h coc-completion

:CocConfig
:CocUpdate
:CocReload

:CocInstall EXTENSION[@VERSION]
:CocUninstall EXTENSION

:CocList extensions
then use <tab> to see options

:CocInfo


Word count
----------
https://vim.fandom.com/wiki/Word_count

Select, then:
::

    g
    <Ctrl>+g


::

    :!wc %


Buffer close
------------
To unload the buffer::

    :bd


To really delete the buffer::

    :bw


Diff all open windows
---------------------
::

    :windo diffthis


Paste and overwrite
-------------------
https://stackoverflow.com/a/25413808/1337474

1) Copy
2) <R> (Replace mode)
3) <Ctrl-r>" (to paste in replace mode)


Replace \n with newline
-----------------------
https://stackoverflow.com/a/71334/1337474
::
    %s/\\n/\r/



vim make list of numbers
------------------------
https://vim.fandom.com/wiki/Making_a_list_of_numbers
https://vim.fandom.com/wiki/Generating_a_column_of_increasing_numbers
::
    :put +range(3,11)


vim column insert
-----------------
https://stackoverflow.com/questions/13701506/vim-quick-column-insert
::
    :vnoremap <C-Space> I<Space><Esc>gv
    :vnoremap <C-S-Space> A<Space><Esc>gv


vim toggle auto preview
-----------------------
::
    set completeopt-=preview
    set completeopt+=preview


vim variables
-------------
https://stackoverflow.com/questions/9193066/how-do-i-inspect-vim-variables
::
    :echo g:SuperTabDefaultCompletionType


vim registers
-------------

https://www.brianstorti.com/vim-registers/
https://www.tutorialspoint.com/vim/vim_registers.htm


Open all files matching searchstring
------------------------------------
::

    vim $(rg SEARCHSTRING -l)

or::

    vim $(grep -R -l SEARCHSTRING *)



Open all last git - edited files in vim
---------------------------------------
https://logc.github.io/blog/2015/07/15/open-files-from-last-commit-in-vim/

$ git config --global alias.lastedited "log --pretty=format: --name-only -n 1"
$ vim $(git lastedited)



Save as root
------------
::
    :w !sudo tee %


Motions
-------

Select inside tags::
    vit

Select around tags::
    vat

Delete/Cut inside tags::
    dit

Delete/Cut around tags::
    dat


Temporarily deactivate auto commands when saving
------------------------------------------------
https://stackoverflow.com/a/41258575/1337474
::
    :noa w




Check installation
------------------
::
    :checkhealth


Search for multiple words
-------------------------
https://stackoverflow.com/questions/41007769/how-to-search-for-multiple-strings-in-a-vi-editor-on-solaris

SEARCHTERM|SEARCHTERM2


Search for all occurrences also within a line
----------------------------------------------
https://stackoverflow.com/questions/5581886/vim-global-replace-line

set gdefault OR %s/SEARCH/REPLACE/g


copy yanked text to command prompt
----------------------------------

https://stackoverflow.com/questions/906535/how-to-copy-yanked-text-to-vi-command-prompt

<ctrl-r>*  - system clipboard
<ctrl-r>"



show last comand
----------------
https://stackoverflow.com/questions/8928070/vim-show-my-last-command-command
: + arrow-up


multiple search/replace in one line
-----------------------------------

https://stackoverflow.com/questions/4737099/multiple-search-and-replace-in-one-line



:%s/SEARCH/REPLACE/e


delete lines matching
---------------------
delete empty lines::

    :g/^$/d

retab
-----

tabs to spaces: ``set et|retab``  (expandtab, retab)
spaces to tabs: ``set noet|retab!`` (noexpandtab, retab)

.. ATTENTION: these changes all whitespace, even those between non-whitespace characters to spaces resp. tabs.

For an alternative, see: http://vim.wikia.com/wiki/Super_retab


search/replace
--------------

``cw`` or ``cgn``



http://vimcasts.org/episodes/operating-on-search-matches-using-gn/

``cgn``: search for next word, select the next match and start insert mode. repeat with ``.``


vim colors
----------
https://codeyarns.com/2011/07/29/vim-chart-of-color-names/


spell correction
----------------
https://stackoverflow.com/questions/640351/how-can-i-spellcheck-in-gvim#640362

::
    :setlocal spell spelllang=en_us
    :set spell

For spell checker and to activate right button on mouse::

    :set mousemodel=popup


::
    :help spell

    To search for the next misspelled word:

    ]s           Move to next misspelled word after the cursor.
                 A count before the command can be used to repeat.
                 'wrapscan' applies.

    [s           Like "]s" but search backwards, find the misspelled
                 word before the cursor.

    Finding suggestions for bad words:

    z=           For the word under/after the cursor, suggest correctly
                 spelled words.

    To add words to your own word list:

    zg           Add word under the cursor as a good word


jump end of file
----------------
::
    :$

count pattern
-------------
:%s/PATTERN//gn


Save / Load a session
---------------------
https://bocoup.com/blog/sessions-the-vim-feature-you-probably-arent-using

Save a session with ``mks`` or ``mksession``::
    :mks SESSIONFILE.vim

Load a session by sourcing that file::
    :source SESSIONFILE.vim

Or:
    $ vim -S SESSIONFILE.vim

Folding
-------
::

    zc  "" close a fold
	zo  "" open a fold
    za  "" toggle fold

	zC  "" like above
    zO  "" but on all
	zA  "" folding levels

    zR  "" open all folds in buffer
    zM  "" close all folds in buffer


Location window commands
------------------------

E.g. Lightline posts it's errors there::

    :lopen
    :lclose
    :ll #LINENUMBER


List/Browse recently opened files
---------------------------------
http://stackoverflow.com/questions/309723/view-a-list-of-recent-documents-in-vim

::
    :oldfiles
    :browse old


Reload current vim file::
    :so %

Reload whole vimrc::
    :so $MYVIMRC


http://stackoverflow.com/questions/11303032/how-to-add-text-at-the-end-of-each-line-in-vim
add text to beginning/end of multiple lines::

    <C-v>  " go into visual block mode and select the lines
    A      " append. then make your changes and press or...
    $A     " to append at the end of each line.
    <ESC>  " done



refresh netrw listing::

    <C-l>

sort case insensitive::

    :sort i

sort revers::

    :sort !


format json::

    :%!python -m json.tool

format js:
https://www.npmjs.com/package/prettier
::
    :%!prettier --single-quote

reformat for column layout::
    :%!column -t

reformat vim table for column layout::

    :%!column -t -s \& -o \&


vimscript
---------

Echo variable value::
    :echo g:SuperTabDefaultCompletionType



performance profiling
---------------------
http://stackoverflow.com/a/12216578/1337474
::
    :profile start profile.log
    :profile func *
    :profile file *
    " At this point do slow actions
    :profile pause
    :noautocmd qall!

http://stackoverflow.com/a/1702904/1337474
::
    vim --startuptime vim.log


Find duplicate autocommand handlers:
http://stackoverflow.com/a/19031285/1337474
e.g.::
    :au CursorMoved

Mathparen slows down:
http://vi.stackexchange.com/a/5318/6303
::
    let g:matchparen_timeout = 20
    let g:matchparen_insert_timeout = 20



General tips
------------

- Open binary files in external browser
http://stackoverflow.com/questions/7810845/how-to-open-pdf-files-under-cursor-using-gf-with-external-pdf-readers-in-vim
::
    au BufReadCmd *.pdf silent !gnome-open % &


::
    :set wrap
    :set nowrap

