
-- Load nvim-cmp
local cmp = require('cmp')

-- nvim-cmp setup
cmp.setup({
  snippet = {
    -- Snippet expansion
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },  -- LSP completions
    { name = 'buffer' },     -- Buffer completions
    { name = 'path' },       -- Path completions
  },
})

