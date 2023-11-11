return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        -- Enable mason
        mason.setup()

        -- Enable mason-lspconfig
        mason_lspconfig.setup({
            -- List of servers to install
            ensure_installed = {
                "lua_ls",
                "bashls",
                "marksman",
                "pyright",
            },
            -- Auto-install configured servers with lspconfig
            automatic_installation = true,
        })

        -- Enable mason.mason-tool-installer
        mason_tool_installer.setup({
            ensure_installed = {
                "stylua", -- Lua formatter
                "luacheck", -- Lua linter
                "markdownlint",
                "isort", -- Python formatter
                "black", -- Python formatter
                "pylint", -- Python linter
            },
        })
    end,
}
