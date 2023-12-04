return {
    "neovim/nvim-lspconfig",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {
            "antosha417/nvim-lsp-file-operations",
            config = true,
        },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        -- Set keymaps
        local keymap = vim.keymap
        local opts = {
            noremap = true,
            silent = true,
        }
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            -- Set keybinds
            opts.desc = "Show LSP references"
            keymap.set("n", "gR", "<Cmd>Telescope lsp_references<CR>", opts) -- Show LSP references

            opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- Go to declaration

            opts.desc = "Show LSP definitions"
            keymap.set("n", "gd", "<Cmd>Telescope lsp_definitions<CR>", opts) -- Show LSP definitions

            opts.desc = "Show LSP implementations"
            keymap.set("n", "gi", "<Cmd>Telescope lsp_implementations<CR>", opts) -- Show LSP implementations

            opts.desc = "Show LSP type definitions"
            keymap.set("n", "gt", "<Cmd>Telescope lsp_type_definitions<CR>", opts) -- Show LSP type definitions

            opts.desc = "See available code actions"
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- See available code actions

            opts.desc = "Smart rename"
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Smart rename

            opts.desc = "Show buffer diagnostics"
            keymap.set("n", "<leader>D", "<Cmd>Telescope diagnostics bufnr=0<CR>", opts) -- Show diagnostics for file

            opts.desc = "Show line diagnostics"
            keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- Show diagnostics for line

            opts.desc = "Go to previous diagnostic"
            keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- Jump to previous diagnostic in buffer

            opts.desc = "Go to next diagnostic"
            keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- Jump to next diagnostic in buffer

            opts.desc = "Show documentation for what is under the cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Show documentation for what is under the cursor

            opts.desc = "Restart LSP"
            keymap.set("n", "<leader>rs", "<Cmd>LspRestart<CR>", opts) -- Mapping to restart LSP if necesarry
        end

        -- Used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Configure lua language server
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = { -- Custom settings for lua
                Lua = {
                    -- Make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        -- Make the language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })

        -- Configure bash language server
        lspconfig["bashls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- Configure markdown language server
        lspconfig["marksman"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- Configure python language server
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- Configure html language server
        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- Configure css language server
        lspconfig["cssls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
}
