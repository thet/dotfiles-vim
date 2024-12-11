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
