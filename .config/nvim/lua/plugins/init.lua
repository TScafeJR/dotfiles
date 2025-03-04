return {
  'preservim/nerdtree',
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
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
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'klen/nvim-test',
  { 'nvim-tree/nvim-web-devicons', priority = 1000, lazy = false },
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
}
