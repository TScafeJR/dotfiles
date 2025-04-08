return {
	'preservim/nerdtree',
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},
	{
		"dgox16/oldworld.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		'vhyrro/luarocks.nvim',
		priority = 1000,
		config = true,
	},
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		config = function()
			vim.cmd('colorscheme catppuccin')
		end,
	},
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
	'm4xshen/autoclose.nvim',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	'klen/nvim-test',
	{ 'nvim-tree/nvim-web-devicons', priority = 1000, lazy = false, opts = {} },
	'ryanoasis/vim-devicons',
	{ 'rcarriga/nvim-dap-ui', dependencies = { 'mfussenegger/nvim-dap' } },
	'folke/neodev.nvim',
	'chentoast/marks.nvim',
	'akinsho/toggleterm.nvim',
	'fatih/vim-go',
	'github/copilot.vim',
	'nvim-neotest/nvim-nio',
	'leoluz/nvim-dap-go',
	{ 'wakatime/vim-wakatime', lazy = false },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		lazy = false,
	},
	{ 'mistricky/codesnap.nvim', build = 'make' },
	{
		'huggingface/llm.nvim',
		enabled = false,
		opts = {
			lsp = {
				bin_path = vim.api.nvim_call_function('stdpath', { 'data' })
					.. '/mason/bin/llm-ls',
			},
			backend = 'ollama',
			model = 'deepseek-coder-v2',
			url = 'http://localhost:11434',
			request_body = {
				options = {
					temperature = 0.2,
					top_p = 0.95,
				},
			},
		},
	},
}
