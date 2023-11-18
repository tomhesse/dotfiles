return {
    "https://git.sr.ht/~reggie/licenses.nvim",
    event = "VeryLazy",
    config = function()
        local licenses = require("licenses")

        licenses.setup({
            copyright_holder = "Tom Hesse",
            email = "contact@tomhesse.xyz",
            license = "MIT",
        })
    end,
}
