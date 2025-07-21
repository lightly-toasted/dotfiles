return {
  "catgoose/nvim-colorizer.lua",
  config = function()
        require("colorizer").setup {
            filetypes = { "*" },
            user_default_options = {
                css = true,
                tailwind = 'both',
                tailwind_opts = {
                    update_names = false,
                }
            }
        }
  end,
}
