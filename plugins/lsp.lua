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

