return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua", "vim","html", "javascript", "css", "scss"},
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
