return {
    -- mason it self
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    --maosn lsp config for make sure isntalled functionality
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "lua_ls", "rust_analyzer", "html", "ts_ls"},
            }
        end
    }
}
