return {
    "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local todocomments = require("todo-comments")

        -- Configure todo-comments
        todocomments.setup()

        --Set keymaps
        local keymap = vim.keymap

        keymap.set("n", "[t", function()
            todocomments.jump_prev()
        end, { desc = "Jump to previous todo comment" }) -- Jump to previous todo comment
        keymap.set("n", "]t", function()
            todocomments.jump_next()
        end, { desc = "Jump to next todo comment" }) -- Jump to next todo comment
        keymap.set("n", "<leader>tt", "<Cmd>TodoTelescope<CR>", { desc = "Open Telescope and show todos" }) -- Open Telescope and show todos
    end,
}
