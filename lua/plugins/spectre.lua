return {
  "nvim-pack/nvim-spectre",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Spectre",
  keys = {
    { "<leader>S", function() require("spectre").open() end, desc = "Open Spectre (Search & Replace)" },
    { "<leader>r", function() require("spectre").open() end, desc = "Open Spectre (Search & Replace)" }
  },
  config = function()
    require("spectre").setup()
  end,
}

