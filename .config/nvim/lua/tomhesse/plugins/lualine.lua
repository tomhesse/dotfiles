return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- To configure lazy pending updates count

        -- Configure lualine
        lualine.setup({
            options = {
                theme = "nord",
            },
            sections = {
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })
    end,
}
