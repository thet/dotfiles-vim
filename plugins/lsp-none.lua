-- See: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
--      https://github.com/nvimtools/none-ls-extras.nvim/
local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        -- linters
        --null_ls.builtins.diagnostics.actionlint,            -- GitHub actions
        --null_ls.builtins.diagnostics.ansiblelint,           -- Ansible
        --null_ls.builtins.diagnostics.checkmake,             -- Make files
        --null_ls.builtins.diagnostics.codespell,             -- Codespell
        --null_ls.builtins.diagnostics.commitlint,            -- Commitlint
        --null_ls.builtins.diagnostics.dotenv_linter,         -- .env
        null_ls.builtins.diagnostics.editorconfig_checker,  -- .editorconfig
        --null_ls.builtins.diagnostics.hadolint,              -- Dockerfile
        --null_ls.builtins.diagnostics.markdownlint,          -- Markdown
        --null_ls.builtins.diagnostics.markuplint,            -- HTML
        --null_ls.builtins.diagnostics.mypy,                  -- Python mypy
        --null_ls.builtins.diagnostics.pylint,                -- Python
        null_ls.builtins.diagnostics.rstcheck,              -- ReStructured Text
        --null_ls.builtins.diagnostics.sqruff,                -- SQL
        null_ls.builtins.diagnostics.stylelint,             -- CSS, LESS, SASS
        null_ls.builtins.diagnostics.tidy,                  -- HTML
        null_ls.builtins.diagnostics.vint,                  -- VIM
        null_ls.builtins.diagnostics.yamllint,              -- YAML
        -- Formatters
        null_ls.builtins.formatting.black,                  -- Python
        null_ls.builtins.formatting.codespell,              -- Codespell
        null_ls.builtins.formatting.isort,                  -- Python
        null_ls.builtins.formatting.markdownlint,           -- Markdown
        null_ls.builtins.formatting.nginx_beautifier,       -- Nginx
        null_ls.builtins.formatting.pg_format,              -- Postgres / SQL
        null_ls.builtins.formatting.prettier,               -- JavaScript, HTML, etc
        --null_ls.builtins.formatting.shfmt,                  -- sh/bash
        null_ls.builtins.formatting.stylelint,              -- CSS, LESS, SASS
        --null_ls.builtins.formatting.styler,                 -- R
        -- none-ls-extras
        require("none-ls.diagnostics.eslint"),              -- JavaScript

        -- Redundant
        --require("none-ls.diagnostics.ruff"),              -- Python
    }
})
