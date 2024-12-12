-- lua/pluginconfig/lightline.lua

-- Lightline configuration
local M = {}

M.config = function()
  vim.g.lightline = {
    colorscheme = "gruvbox",  -- Lightline theme
    active = {
      left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } },
      right = { { 'lineinfo' }, { 'percent' }, { 'filetype' } },
    },
    component_function = {
      gitbranch = "fugitive#head",
    },
  }
end

return M
