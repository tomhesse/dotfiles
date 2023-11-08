return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvimtree = require("nvim-tree")

        -- Recommended settings from nvim-tree docs
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Configure nvim-tree
        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
            },
        })

        -- Set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- Toggle file explorer
        keymap.set(
            "n",
            "<leader>ef",
            "<Cmd>NvimTreeFindFileToggle<CR>",
            { desc = "Toggle file explorer on current file" }
        ) -- Toggle file explorer on current file
        keymap.set("n", "<leader>ec", "<Cmd>NvimTreeCollapes<CR>", { desc = "Collapse file explorer" }) -- Collapse file explorer
        keymap.set("n", "<leader>er", "<Cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- Refresh file explorer
    end,
}
