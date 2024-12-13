-- plugins/luasnip.lua
return {
  'L3MON4D3/LuaSnip',
  dependencies = {
    'rafamadriz/friendly-snippets', -- Optional: For pre-made snippets
  },
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load() -- Load pre-made snippets
  end,
}
