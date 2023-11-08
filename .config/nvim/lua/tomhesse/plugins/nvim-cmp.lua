return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- Source for text in buffer
        "hrsh7th/cmp-path", -- Source for file system paths
        "onsails/lspkind.nvim", -- VScode-like pictograms
        "L3MON4D3/LuaSnip", -- Snippet engine
        "saadparwaiz1/cmp_luasnip", -- Source for luasnip
        "rafamadriz/friendly-snippets", -- Useful snippets
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        -- Load vscode like snippets from friendly-snippets
        require("luasnip.loaders.from_vscode").lazy_load()

        vim.opt.completeopt = "menu,menuone,preview,noselect"
        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- Next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll down in docs
                ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll up in docs
                ["<C-Space>"] = cmp.mapping.complete(), -- Show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- Close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept only explicit selected item
            }),
            -- Sources for autocompletion
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- Neovim LSP
                { name = "luasnip" }, -- Snippets
                { name = "buffer" }, -- Text within current buffer
                { name = "path" }, -- File system paths
            }),
            -- Configure lspkind for vscode-like icons
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50,
                    ellipsis_char = "...",
                }),
            },
        })
    end,
}
