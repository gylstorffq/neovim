return {
    'akinsho/org-bullets.nvim',
     dependencies = {
		'nvim-treesitter/nvim-treesitter'
	},
    config = function()
      require('org-bullets').setup{}
    end
}
