return {
    "ravibrock/spellwarn.nvim",
    event = "VeryLazy",
    config = function ()
      require("spellwarn").setup({
      max_file_size = 20000
    })
    end,
}
