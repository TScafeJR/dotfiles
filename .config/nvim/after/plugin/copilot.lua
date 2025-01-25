local function enable_copilot_if_node_version_sufficient()
  local handle = io.popen('node --version')
  local result = handle:read('*a')
  handle:close()

  -- Extract the major version number
  local major_version = result:match('^v(%d+)')
  if major_version then
    major_version = tonumber(major_version)
    if major_version >= 16 then
      -- Run the Copilot enable command
      vim.cmd('Copilot enable')
    end
  end
end

enable_copilot_if_node_version_sufficient()
