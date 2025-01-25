return {
	'preservim/nerdtree',
	{
		'nvim-telescope/telescope.nvim', version = '0.1.4',
		-- or                            , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'vhyrro/luarocks.nvim',
		priority = 1000,
		config = true,
	},
	{ 'catppuccin/nvim', name = 'catppuccin', config = function() vim.cmd('colorscheme catppuccin') end },
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
	'nvim-treesitter/playground',
	'm4xshen/autoclose.nvim',
	'f-person/git-blame.nvim',
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	{
		'klen/nvim-test',
		config = function()
			require('nvim-test').setup()
		end
	},
	'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	'ryanoasis/vim-devicons',
	{
		'neoclide/coc.nvim',
		branch = 'release'
	},
	'mfussenegger/nvim-dap',
	{ 'rcarriga/nvim-dap-ui', dependencies = {'mfussenegger/nvim-dap'} },
	'jose-elias-alvarez/null-ls.nvim',
	'folke/neodev.nvim',
	'chentoast/marks.nvim',
	{
		'iamcco/markdown-preview.nvim',
		build = function() vim.fn['mkdp#util#install']() end,
	},
	{'akinsho/toggleterm.nvim', config = function()
		require('toggleterm').setup()
	end},
	'HerringtonDarkholme/yats.vim',
	'fatih/vim-go',
	'github/copilot.vim',
	'nvim-neotest/nvim-nio',
	'leoluz/nvim-dap-go',
	{
		'folke/todo-comments.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = {}
	},
	{ 'wakatime/vim-wakatime', lazy = false },
	'nvim-lualine/lualine.nvim',
	{ 'mistricky/codesnap.nvim', build = 'make' },
	{ 'R-nvim/R.nvim' },
}
