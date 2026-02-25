return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "jay-babu/mason-nvim-dap.nvim",
            "jay-babu/mason-null-ls.nvim",
        },
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({ -- LSP servers
                ensure_installed = {
                    "lua_ls",
                    "yamlls",
                    "jsonls",
                    "ts_ls",
                    "vue_ls",
                },
                automatic_installation = true,
            })
            require("mason-nvim-dap").setup({ -- DAP
                ensure_installed = {
                },
                automatic_installation = true
            })
            require("mason-null-ls").setup({ -- Linters & formatters
                ensure_installed = {
                    "stylua",
                    "luacheck",
                    "yamllint",
                    "jsonlint",
                    "eslint_d",
                    "prettier",
                },
                automatic_installation = true,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lsp = vim.lsp

            lsp.enable("lua_ls")
            lsp.enable("yaml_ls");
            lsp.enable("json_ls");
            lsp.enable("ts_ls");
            lsp.enable("vue_ls");
        end,
    },
}
