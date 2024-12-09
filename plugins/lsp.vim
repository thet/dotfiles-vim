Plug 'neovim/nvim-lspconfig'  " https://github.com/neovim/nvim-lspconfig
Plug 'williamboman/mason.nvim'  " https://github.com/williamboman/mason.nvim
Plug 'williamboman/mason-lspconfig.nvim'  " https://github.com/williamboman/mason-lspconfig.nvim
Plug 'WhoIsSethDaniel/mason-tool-installer.nvim'  " https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
Plug 'j-hui/fidget.nvim'  " https://github.com/j-hui/fidget.nvim
Plug 'folke/lazydev.nvim'  " https://github.com/folke/lazydev.nvim

Plug 'MunifTanjim/prettier.nvim'  " https://github.com/MunifTanjim/prettier.nvim

" COMPLETION
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" COMPLETION SNIPPETS
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'


Plug 'nvim-lua/plenary.nvim'  " https://github.com/nvim-lua/plenary.nvim
Plug 'nvimtools/none-ls.nvim'  " https://github.com/nvimtools/none-ls.nvim
Plug 'nvimtools/none-ls-extras.nvim'  " https://github.com/nvimtools/none-ls-extras.nvim

Plug 'Maan2003/lsp_lines.nvim'  " https://github.com/Maan2003/lsp_lines.nvim https://git.sr.ht/~whynothugo/lsp_lines.nvim


" Keybindings

noremap <leader>f :luado vim.lsp.buf.format()<CR>
