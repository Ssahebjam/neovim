return {
    "neovim/nvim-lspconfig",

    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()

        local lspconfig = require("lspconfig") lspconfig.lua_ls.setup({ capabilities = capabilities })
        lspconfig.ts_ls.setup({ capabilities = capabilities })
        lspconfig.emmet_language_server.setup({ capabilities = capabilities })
        lspconfig.html.setup({ capabilities = capabilities })
        lspconfig.cssls.setup({ capabilities = capabilities })
        lspconfig.rust_analyzer.setup({ capabilities = capabilities })
        lspconfig.bashls.setup({ capabilities = capabilities })
        lspconfig.bashls.setup({ capabilities = capabilities })
        lspconfig.pylsp.setup({ capabilities = capabilities })

        vim.keymap.set("n", "K", vim.lsp.buf.hover )
        vim.keymap.set("n", "gd", vim.lsp.buf.definition )
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action )

        vim.api.nvim_create_autocmd("CursorHold", {
            callback = function()
                vim.diagnostic.open_float(nil, { focus = false })
            end
        })

    end
}
