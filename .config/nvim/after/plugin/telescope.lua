local builtin = require('telescope.builtin')

local function set_telescope_cwd()
  local current_file = vim.fn.expand('%:p')
  local git_root = vim.fn.system(
    'git -C '
      .. vim.fn.escape(current_file, ' ')
      .. ' rev-parse --show-toplevel 2> /dev/null'
  )
  if git_root ~= '' then
    vim.fn.execute('lcd ' .. git_root)
  end
end

vim.cmd([[
  autocmd BufEnter * if &filetype == 'TelescopePrompt' | lua set_telescope_cwd() | endif
]])

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', function()
  builtin.git_files({ path_display = { 'truncate' } })
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
