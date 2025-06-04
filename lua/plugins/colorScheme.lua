return {
  "Skardyy/makurai-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("makurai").setup({
      transparent = false -- removes the bg color
    })
    vim.cmd.colorscheme("makurai_mage")  -- Load Makurai-nvim colorscheme
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#807269' })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#807269' })
  end,
}
