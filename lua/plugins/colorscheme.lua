return {
    "rockerBOO/boo-colorscheme-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        default = true, 
    },
    config = function()
        vim.cmd("colorscheme boo")
        -- transparent background
        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
    end
}
