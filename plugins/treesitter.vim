" Treesitter
" https://neovim.io/doc/user/treesitter.html
" https://tree-sitter.github.io/tree-sitter/
" https://github.com/tree-sitter/tree-sitter
" https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md
" https://github.com/nvim-treesitter/nvim-treesitter
" https://github.com/nvim-treesitter/nvim-treesitter-context

" Use master branch until we're on Neovim 0.11 and treesitter's main branch is
" considered stable
Plug 'nvim-treesitter/nvim-treesitter', { 'branch': 'master', 'do': ':TSUpdate'}  " https://github.com/nvim-treesitter/nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter-context'  " https://github.com/nvim-treesitter/nvim-treesitter-context
