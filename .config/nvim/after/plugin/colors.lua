function ColorMyPencils(color, style)
	style = style or "dark"
	color = color or ((style == "dark") and "catppuccin" or "catppuccin-latte")

	vim.cmd.colorscheme(color)

	if style == "dark" then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end

local active = "dark"

vim.keymap.set('n', '<Leader>t', function()
  local style = active == "dark" and "light" or "dark"
	active = style
  local theme = style == "dark" and "catppuccin" or "catppuccin-latte"
  ColorMyPencils(theme, style)
  return nil
end)

