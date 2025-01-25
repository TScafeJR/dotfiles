require('neodev').setup({})

vim.opt.signcolumn = 'yes'

local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
	'force',
	lspconfig_defaults.capabilities,
	require('cmp_nvim_lsp').default_capabilities()
)

vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function(event)
		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set('n', 'gd', function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set('n', 'K', function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set('n', '<leader>vws', function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set('n', '<leader>vd', function()
			vim.diagnostic.open_float()
		end, opts)
		vim.keymap.set('n', '[d', function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set('n', ']d', function()
			vim.diagnostic.goto_prev()
		end, opts)
		vim.keymap.set('n', '<leader>vca', function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set('n', '<leader>vrr', function()
			vim.lsp.buf.references()
		end, opts)
		vim.keymap.set('n', '<leader>vrn', function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set('i', '<C-h>', function()
			vim.lsp.buf.signature_help()
		end, opts)
	end,
})

vim.diagnostic.config({
	virtual_text = {
		prefix = '●',
	},
	float = {
		source = 'always', -- Or "if_many"
	},
})

vim.o.updatetime = 300

-- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap(
	'n',
	'<Leader>d',
	':lua vim.diagnostic.open_float()<CR>',
	{ noremap = true, silent = true }
)

-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
	'n',
	'<Leader>n',
	':lua vim.diagnostic.goto_next()<CR>',
	{ noremap = true, silent = true }
)

-- Go to prev diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
	'n',
	'<Leader>p',
	':lua vim.diagnostic.goto_prev()<CR>',
	{ noremap = true, silent = true }
)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
		'documentation',
		'detail',
		'additionalTextEdits',
	},
}

require('neodev').setup({
	library = { plugins = { 'nvim-dap-ui' }, types = true },
})

require('mason').setup({
	ui = {
		icons = {
			package_installed = '✓',
			package_pending = '➜',
			package_uninstalled = '✗',
		},
	},
})

require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})
