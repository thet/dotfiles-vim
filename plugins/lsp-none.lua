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
