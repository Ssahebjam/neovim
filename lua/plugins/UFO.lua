return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  event = "BufReadPost",
  config = function()
    local ufo = require("ufo")

    -- Configure folding settings
    vim.o.foldcolumn = "1" -- Show fold column
    vim.o.foldlevel = 99    -- Open all folds by default
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Use LSP as the main folding method, fallback to indent
    ufo.setup({
      provider_selector = function(_, _, _)
        return { "lsp", "indent" }
      end
    })

    -- Folding keybindings
    vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
    vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })
    vim.keymap.set("n", "zr", ufo.openFoldsExceptKinds, { desc = "Open folds incrementally" })
    vim.keymap.set("n", "zm", ufo.closeFoldsWith, { desc = "Close folds incrementally" })
    vim.keymap.set("n", "zp", function()
      local winid = ufo.peekFoldedLinesUnderCursor()
      if not winid then
        vim.notify("No folded lines under cursor", vim.log.levels.INFO)
      end
    end, { desc = "Peek fold" })

    -- Ensure LSP supports folding
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true
    }

    require("lspconfig").lua_ls.setup({
      capabilities = capabilities,
      handlers = {
        ["textDocument/foldingRange"] = function(...)
          return ufo.lsp_foldingRange(...)
        end,
      },
    })
  end
}

