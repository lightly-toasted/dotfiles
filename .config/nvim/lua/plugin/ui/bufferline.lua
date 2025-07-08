return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        vim.opt.laststatus = 3
        require("bufferline").setup{}
    end
}