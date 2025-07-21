vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("config") .. "/undo"
vim.cmd("silent !mkdir -p " .. vim.opt.undodir._value)

vim.api.nvim_create_autocmd("UIEnter", {
    callback = function()
	if vim.g.started_by_firenvim then
        	vim.opt.lines = 100
        	vim.opt.columns = 300
	end
    end,
})

