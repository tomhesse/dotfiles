return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- Move to previous result
                        ["<C-j>"] = actions.move_selection_next, -- Move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Send selection to qflist and open qflist
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        -- Set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" }) -- Fuzzy find files in cwd
        keymap.set("n", "<leader>fr", "<Cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" }) -- Fuzzy find recent files
        keymap.set("n", "<leader>fs", "<Cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" }) -- Find string in cwd
        keymap.set("n", "<leader>fc", "<Cmd>Telescope grep_grep<CR>", { desc = "Find string under cursor in cwd" }) -- Find string under cursor in cwd
    end,
}
