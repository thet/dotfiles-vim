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


require("lsp_lines").setup()


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


-- See: https://github.com/astral-sh/ruff-lsp?tab=readme-ov-file#setup
-- Configure `ruff-lsp`.
-- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#ruff_lsp
-- For the default config, along with instructions on how to customize the settings
nvim_lsp.ruff.setup {
  init_options = {
    settings = {
      -- Any extra CLI arguments for `ruff` go here.
      args = {},
    }
  }
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
        --null_ls.builtins.diagnostics.codespell,
        --null_ls.builtins.diagnostics.commitlint,
        --null_ls.builtins.diagnostics.dotenv_linter,
        null_ls.builtins.diagnostics.editorconfig_checker,
        --null_ls.builtins.diagnostics.gitlint,
        --null_ls.builtins.diagnostics.hadolint,
        --null_ls.builtins.diagnostics.markdownlint,
        --null_ls.builtins.diagnostics.mypy,
        --null_ls.builtins.diagnostics.pylint,
        --null_ls.builtins.diagnostics.rstcheck,
        --null_ls.builtins.diagnostics.sqlfluff.with({
        --    extra_args = { "--dialect", "postgres" }, -- change to your dialect
        --}),
        null_ls.builtins.diagnostics.stylelint,
        --null_ls.builtins.diagnostics.tidy,
        -- Formatters
        null_ls.builtins.formatting.black,
        --null_ls.builtins.formatting.codespell,
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
