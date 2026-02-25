return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "gbprod/none-ls-luacheck.nvim",
        "gwinn/none-ls-jsonlint.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.code_actions.refactoring,
                null_ls.builtins.formatting.stylua,   -- lua formatter
                require("none-ls-luacheck.diagnostics.luacheck"), -- lua linter
                require("none-ls.diagnostics.yamllint").with({ -- yaml linter
                    args = {
                        "-d",
                        "{extends: default, rules: {line-length: {max: 120}, truthy: disable, document-start: disable}}",
                        "--format",
                        "parsable",
                        "-",
                    },
                }),
                require("none-ls-jsonlint.diagnostics.jsonlint"), -- json linter
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
