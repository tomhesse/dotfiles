return {
    "arcticicestudio/nord-vim",
    priority = 1000, -- Ensure nord theme is loaded before other plugins
    config = function()
        -- Load the colorscheme
        vim.cmd([[colorscheme nord]])
    end,
}
