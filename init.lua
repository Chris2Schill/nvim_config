require("schill")

vim.keymap.set("n", "<leader>vimrc", ":e $XDG_CONFIG_HOME/nvim/init.lua<cr>")

vim.o.background = "dark"
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true,    -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})
vim.cmd([[colorscheme gruvbox]])

vim.api.nvim_create_user_command("Reinit", function()
    vim.cmd("so $XDG_CONFIG_HOME/nvim/init.lua")
end, {})

vim.cmd("packadd vimspector")

vim.opt.mouse = "a"
