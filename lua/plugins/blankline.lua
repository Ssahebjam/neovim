return {
    "lukas-reineke/indent-blankline.nvim",
    config = function ()
        local hooks = require "ibl.hooks"
        -- Define the highlight group for indent lines
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "IndentBlankline", { fg = "#4B5263" }) -- Your chosen color
            vim.api.nvim_set_hl(0, "IndentBlanklineScope", { fg = "#4B5263", underline = false }) -- No underline for scope
        end)

        require("ibl").setup {
            indent = {
                highlight = { "IndentBlankline" },
                char = "│",
            },
            scope = {
                enabled = false, -- Disable scope entirely to avoid any underline
                -- Or, if you want to keep scope without underline:
                -- enabled = true,
                -- show_start = true,
                -- show_end = false,
                -- highlight = { "IndentBlanklineScope" },
            },
        }
    end
}
