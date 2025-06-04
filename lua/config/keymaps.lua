vim.g.mapleader = " "

local set = vim.keymap.set

set("n", "<A-p>", ":TelescopeHomeSearch<cr>", {silent = true})

set("n", "<leader>p", '"+p')
set("v", "<leader>y", '"+y')

set("n", "<C-b>",":Ex<cr>")

set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("n", "<leader>h", "<C-w>h", {silent = true})
set("n", "<leader>j", "<C-w>j", {silent = true})
set("n", "<leader>k>", "<C-w>k", {silent = true})
set("n", "<leader>l", "<C-w>l", {silent = true})

set("n", "<leader>|", "<cmd>vsplit<CR>", { noremap = true, silent = true })
set("n", "<leader>/", "<cmd>split<CR>", { noremap = true, silent = true })
set("n", "<leader>`", "<C-w>o")

set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
