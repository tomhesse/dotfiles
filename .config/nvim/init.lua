-- Check if Neovim version is sufficient
if vim.fn.has("nvim-0.8") == 0 then
    error("Need Neovim 0.8+ in order to use this config")
end

-- Define required commands
local required_commands = {
    "git", -- Required by mason and to bootstrap lazy.nvim
    "curl", -- Required by mason
    "unzip", -- Required by mason
    "tar", -- Required by mason
    "gzip", -- Required by mason
    "rg", -- Required by telescope.nvim
    "luarocks", -- Required my mason to install packages
    "npm", -- Required by mason to install packages
    "shellcheck", -- Required to lint shell scripts (bashls)
}

-- Check if required programs are installed
for _, cmd in ipairs(required_commands) do
    local name = type(cmd) == "string" and cmd or vim.inspect(cmd)
    local commands = type(cmd) == "string" and { cmd } or cmd
    ---@cast commands string[]
    local found = false

    for _, c in ipairs(commands) do
        if vim.fn.executable(c) == 1 then
            name = c
            found = true
        end
    end

    if not found then
        error(("`%s` is not installed"):format(name))
    end
end

-- Load core config and lazy.nvim
require("tomhesse.core")
require("tomhesse.lazy")
