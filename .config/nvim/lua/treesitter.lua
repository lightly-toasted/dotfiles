require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "javascript", "html", "css", "json", "bash", "python", "typescript", "svelte" },
  highlight = { enable = true },
  indent = { enable = true },
})
