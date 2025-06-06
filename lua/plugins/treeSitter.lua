return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end
}
