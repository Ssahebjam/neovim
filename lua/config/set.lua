local set = vim.keymap.set
local opt = vim.opt

set("n", "<C-b>", ":Ex<cr>")

vim.opt.guicursor = "n-v-c-sm:block-blinkon1000,i-ci-ve:block-blinkon1000,r-cr-o:hor20,a:blinkwait2000-blinkoff1200-blinkon1000"
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

set("n", "<leader>|", "<cmd>vsplit<CR>", { noremap = true, silent = true })
set("n", "<leader>/", "<cmd>split<CR>", { noremap = true, silent = true })
set("n", "<leader>`", "<C-w>o")



set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true })

vim.opt.statusline = "%f %y %m %r %= %p%% %l:%c"

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
