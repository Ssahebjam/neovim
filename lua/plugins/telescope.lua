-- creating new command using vim hooks
vim.api.nvim_create_user_command("TelescopeHomeSearch", function()
  -- home of the user
  local path = vim.fn.expand("$HOME")
  -- scanning with plenary
  local scan = require("plenary.scandir")
  -- taking directorys
  local dirs = scan.scan_dir(path, {
    only_dirs = true,
  })

  -- calling telescope picker for the prompt and taking user input
  require("telescope.pickers")
      .new({}, {
        prompt_title = "Search Home",
        finder = require("telescope.finders").new_table({
          results = dirs,
        }),
        sorter = require("telescope.config").values.generic_sorter(),
        attach_mappings = function(prompt_bufnr, _)
          local actions = require("telescope.actions")
          local action_state = require("telescope.actions.state")

          actions.select_default:replace(function()
            local selection = action_state.get_selected_entry()
            actions.close(prompt_bufnr) -- pass prompt_bufnr here!

            local dir = selection and selection.value
            if dir then
              vim.cmd("cd " .. vim.fn.fnameescape(dir))
              vim.cmd("edit .")
            end
          end)

          return true
        end,
      })
      :find()
end, {})

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })
    require("telescope").load_extension("ui-select")
    require("telescope").load_extension("fzf")
  end,
}
