return {
		'preservim/nerdtree',
	{
		'nvim-telescope/telescope.nvim', version = '0.1.4',
		-- or                            , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'catppuccin/nvim', name = 'catppuccin', config = function() vim.cmd('colorscheme catppuccin') end },
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
	'nvim-treesitter/playground',
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			--- Uncomment these if you want to manage LSP servers from neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',

			-- LSP Support
			'neovim/nvim-lspconfig',
			-- Autocompletion
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
		}
	},
	'hrsh7th/nvim-compe',
	'm4xshen/autoclose.nvim',
	'f-person/git-blame.nvim',
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
