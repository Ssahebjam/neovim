return {
    "ThePrimeagen/harpoon",
    config = function ()
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>s", function ()
            require("harpoon.mark").add_file()
        end)
        vim.keymap.set("n", "<C-e>", function()
            ui.toggle_quick_menu()
        end)
        vim.keymap.set("n", "<C-i>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
    end,
}
