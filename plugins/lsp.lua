require('mason').setup()
require('mason-lspconfig').setup({
  -- Install these LSPs automatically
  --ensure_installed = {
  --  'bash-language-server',
  --  'css-lsp',
  --  'html-lsp',
  --  'json-lsp',
  --  'lua-language-server',
  --  "python-lsp-server",
  --  'prettier',
  --  'svelte-language-server',
  --  'tailwindcss-language-server',
  --  'typescript-language-server',
  --  'vue-language-server',
  --  'yaml-language-server',
  --}
})

--require('mason-tool-installer').setup({
--  -- Install these linters, formatters, debuggers automatically
--  ensure_installed = {
--    'black',
--    'debugpy',
--    'flake8',
--    'isort',
--    'mypy',
--    'pylint',
--  },
--})


-- See: https://blog.inkdrop.app/my-neovim-setup-for-react-typescript-tailwind-css-etc-in-2022-a7405862c9a4
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

--local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end
    })
  end
end

-- TypeScript
nvim_lsp.ts_ls.setup {
  on_attach = on_attach,
  filetypes = {
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "typescript.tsx"
  },
  cmd = { "typescript-language-server", "--stdio" }
}

local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        -- actions
        null_ls.builtins.code_actions.textlint,
        -- diagnostics
        require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
        --null_ls.builtins.diagnostics.actionlint,
        --null_ls.builtins.diagnostics.ansiblelint,
        --null_ls.builtins.diagnostics.checkmake,
        null_ls.builtins.diagnostics.codespell,
        --null_ls.builtins.diagnostics.commitlint,
        --null_ls.builtins.diagnostics.dotenv_linter,
        null_ls.builtins.diagnostics.editorconfig_checker,
        --null_ls.builtins.diagnostics.gitlint,
        --null_ls.builtins.diagnostics.hadolint,
        --null_ls.builtins.diagnostics.markdownlint,
        --null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.rstcheck,
        --null_ls.builtins.diagnostics.sqlfluff.with({
        --    extra_args = { "--dialect", "postgres" }, -- change to your dialect
        --}),
        null_ls.builtins.diagnostics.stylelint,
        null_ls.builtins.diagnostics.tidy,
        -- Formatters
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.codespell,
        null_ls.builtins.formatting.isort,
        --null_ls.builtins.formatting.nginx_beautifier,
        --null_ls.builtins.formatting.pg_format,
        null_ls.builtins.formatting.prettier,
        --null_ls.builtins.formatting.rustywind,
        --null_ls.builtins.formatting.xmllint,
    }
})

-- -- See: https://github.com/MunifTanjim/prettier.nvim
-- local prettier = require("prettier")
-- prettier.setup({
--   bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
--   filetypes = {
--     "css",
--     "graphql",
--     "html",
--     "javascript",
--     "javascriptreact",
--     "json",
--     "less",
--     "markdown",
--     "scss",
--     "typescript",
--     "typescriptreact",
--     "yaml",
--   },
-- })


-- See: https://github.com/hrsh7th/nvim-cmp
-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
  -- REQUIRED - you must specify a snippet engine
  expand = function(args)
    vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
    -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
  end,
},
window = {
  -- completion = cmp.config.window.bordered(),
  -- documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
}),
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'vsnip' }, -- For vsnip users.
  -- { name = 'luasnip' }, -- For luasnip users.
  -- { name = 'ultisnips' }, -- For ultisnips users.
  -- { name = 'snippy' }, -- For snippy users.
}, {
  { name = 'buffer' },
})
})

-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
-- Set configuration for specific filetype.
--[[ cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
  { name = 'git' },
}, {
  { name = 'buffer' },
})
})
require("cmp_git").setup() ]]--

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
mapping = cmp.mapping.preset.cmdline(),
sources = {
  { name = 'buffer' }
}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
mapping = cmp.mapping.preset.cmdline(),
sources = cmp.config.sources({
  { name = 'path' }
}, {
  { name = 'cmdline' }
}),
matching = { disallow_symbol_nonprefix_matching = false }
})

-- -- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
-- capabilities = capabilities
-- }
