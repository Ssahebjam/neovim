return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>u", ":UndotreeToggle<cr>", { silent = true })
	end,
}
