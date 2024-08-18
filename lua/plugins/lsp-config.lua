return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "nvimtools/none-ls.nvim",
            "jay-babu/mason-null-ls.nvim",
        },
        config = function()
            local mason = require("mason")
            local mason_lspconfig = require("mason-lspconfig")
            local lspconfig = require("lspconfig")
            local cmp_nvim_lsp = require("cmp_nvim_lsp")
            local none_ls = require("null-ls")
            local mason_null_ls = require("mason-null-ls")

            -- setup mason
            mason.setup()

            -- setup Mason-LSPconfig
            mason_lspconfig.setup({
                ensure_installed = {
                    "lua_ls",
                    "tsserver",
                    "pyright",
                },
                automatic_installation = true,
            })

            mason_null_ls.setup({
                ensure_installed = {
                    "prettier",
                    "eslint_d",
                    "stylua",
                    "black",
                    "isort",
                },
                automatic_installation = true,
            })

            none_ls.setup({
                sources = {
                    -- lua
                    none_ls.builtins.formatting.stylua,
                    -- python
                    none_ls.builtins.formatting.black,
                    none_ls.builtins.formatting.isort,
                    -- javascript/typescript
                    none_ls.builtins.formatting.prettier,
                    none_ls.builtins.diagnostics.eslint_d,
                },
            })

            -- LSP capabilities
            local capabilities = cmp_nvim_lsp.default_capabilities()

            -- LSP setup
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities,
                filetypes = {
                    "typescript",
                    "typescriptreact",
                    "typescript.tsx",
                    "javascript",
                    "javascriptreact",
                    "javascript.jsx",
                },
                -- Add these lines for debugging
				on_init = function(client)
					client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
					return true
				end,
				on_attach = function(client, bufnr)
					vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
					print("TSServer attached!")
				end,
				flags = {
					debounce_text_changes = 150,
				},
            })

            lspconfig.pyright.setup({
                capabilities = capabilities,
            })

            --global keybindings
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover information" })
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" })

            vim.lsp.set_log_level("debug")
        end,
    },
}
