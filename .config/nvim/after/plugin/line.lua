-- only show the clock when fullscreen (= it covers the menubar clock)
local function clock()
  if vim.opt.columns:get() < 110 or vim.opt.lines:get() < 25 then
    return ''
  end

  local time = tostring(os.date()):sub(12, 16)
  if os.time() % 2 == 1 then
    time = time:gsub(':', ' ')
  end -- make the `:` blink
  return time
end

require('lualine').setup({
  options = {
    theme = 'auto',
    section_separators = { '', '' },
    component_separators = { '', '' },
  },
  tabline = {
    lualine_y = { clock },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
})
