local set = vim.keymap.set
local opt = vim.opt

set("n", "<C-b>", ":Ex<cr>")

vim.opt.guicursor = "n-v-c-i:block-blinkon1,r-cr:hor20-blinkon1"
vim.g.mapleader = " "

set("n", "<leader>p", '"+p')
set("v", "<leader>y", '"+y')

opt.number = true
opt.relativenumber = true
opt.foldcolumn = "0"

opt.wrap = false

opt.smartindent = true

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

set("n", "J", "mzJ`z")

set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("n", "<leader>h", "<C-w>h", {silent = true})
set("n", "<leader>j", "<C-w>j", {silent = true})
set("n", "<leader>k>", "<C-w>k", {silent = true})
set("n", "<leader>l", "<C-w>l", {silent = true})

vim.keymap.set("n", "<leader>|", "<cmd>vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>/", "<cmd>split<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true })

vim.opt.statusline = "%f %y %m %r %= %p%% %l:%c"
