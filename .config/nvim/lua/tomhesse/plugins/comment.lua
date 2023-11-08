return {
    "numtoStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = true, -- Runs require('Comment').setup()
}
